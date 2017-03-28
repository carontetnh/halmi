<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.User"%>
<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h4 class="modal-title" id="myModalLabel">Login</h4>
</div>
<jsp:useBean id="user" scope="request" class="beans.User"></jsp:useBean>
    <div class="modal-body">
        <div class="row">
            <div class="col-md-6 center-block">
                <input type="text" name="Nombre" id="Nombre" class="form-control" placeholder="Dirección de Correo*" required autofocus value="<jsp:getProperty name="user" property="nombre"/>">
            <br>
            <input type="password" id="Password" class="form-control" placeholder="Contraseña*" required name="Password" value="<jsp:getProperty name="user" property="password"/>">
            <br>
            <div class="row">
                <div class="col-md-6">
                    <p>
                        <a href="forgot.jsp">¿Olvidaste tu contraseña?</a><br>
                        <span class="required">*Información requerida</span>
                    </p> 
                </div>
                <div class="col-md-6">
                    <button class="btn btn-lg btn-primary btn-block" type="submit" id="login">Entrar</button> 
                </div>
            </div>
        </div>
        <div class="col-md-6 center-block">
            <h4>CREAR UNA CUENTA EN HALMI</h4>
            <p>Recibe noticias sobre nuevos productos, descuentos y productos exclusivos de halmi</p>
            <p>Recibe las últimas noticias de halmi</p>
            <p>Obtén acceso a tu cuenta para Iniciar sesión</p>
            <p>Métodos más rápidos de pago</p>
            <p>Rastreo de tus compras</p>                    
            <a class="btn btn-lg btn-primary btn-block" href="registry.jsp">CREAR UNA CUENTA</a>
        </div>
        <div class="col-md-12 center-block"></div>
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
