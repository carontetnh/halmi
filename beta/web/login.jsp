<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.User"%>
<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h4 class="modal-title" id="myModalLabel">Login</h4>
</div>
<div class="modal-body">
    <jsp:useBean id="user" scope="request" class="beans.User"></jsp:useBean>
            <div class="row">
                <div class="col-md-12 center-block">
                    <input type="text" name="Nombre" id="Nombre" class="form-control" placeholder="Nombre" required autofocus value="<jsp:getProperty name="user" property="nombre"/>">
                <br>
                <input type="password" id="Password" class="form-control" placeholder="Password" required name="Password" value="<jsp:getProperty name="user" property="password"/>">
                <br>
                <div class="row">
                    <div class="col-md-6">
                        <a class="btn btn-lg btn-primary btn-block" href="registry.jsp">Registrate</a>
                    </div>
                    <div class="col-md-6">
                        <button class="btn btn-lg btn-primary btn-block" type="submit" id="login">Entrar</button> 
                    </div>
                </div>
            </div>
            <div class="col-md-12 center-block"></div>
        </div>
    </div>
    <script>
        $(document).ready(function () {
            $('#login').click(function ()
            {
                var user = $('#Nombre').val();
                var pwd = $('#Password').val();
                $.ajax({
                    type: "POST",
                    url: "LoginController",
                    data: {"Nombre": user, "Password": pwd},
                    success: function (data) {
                        if (data == 'True') {
                            $(location).attr('href', 'welcome.jsp');
                        } else {
                            toastr.error('Either username or password is incorrect!');
                        }
                    }
                });
            });
        });
    </script>
</div>
<div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
    <button type="button" class="btn btn-primary">Save changes</button>
</div>