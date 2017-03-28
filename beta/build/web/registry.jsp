<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.User"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-theme.min.css" rel="stylesheet">
        <link href="css/custom.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css"/>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>   
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <body>
        <jsp:useBean id="user" scope="request" class="beans.User"></jsp:useBean>
            <nav class="navbar navbar-inverse navbar-fixed-top">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">Halmi</a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>
                            <li><a href="login.jsp" data-toggle="modal" data-target="#LoginModal">Login</a></li>
                            <li><a href="productos.jsp">Productos</a></li>
                            <li><a href="about.jsp">Contacto</a></li>
                            <li><a href="howto.jsp">Como comprar</a></li>
                            <li><a href="disclaimer.jsp">Aviso de Privacidad</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <form class="navbar-form navbar-left">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Buscar">
                                    </div>
                                    <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                                </form>
                            </li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
            </nav>
            <br>
            <br>
            <br>
            <div class="row">
                <div class="col-sm-4 center-block"></div>
                <div class="col-sm-4 center-block">
                    <h1>CREAR CUENTA</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 center-block"></div>
                <div class="col-sm-4 center-block">
                    <form action="RegisterController" method="post">
                        <div class="row">
                            <div class="col-sm-6 center-block">
                                <label for="firstname">Nombre<span class="required">*</span></label>
                                <input type="text" name="Nombre" id="Nombre" class="form-control" required autofocus value="<jsp:getProperty name="user" property="nombre"/>">
                        </div>
                        <div class="col-sm-6 center-block">
                            <label for="lastname">Apellido<span class="required">*</span></label>
                            <input type="text" name="Apellido" id="Apellido" class="form-control" required autofocus value="<jsp:getProperty name="user" property="apellido"/>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 center-block">
                            <label for="empresa">Empresa</label>
                            <input type="text" name="Empresa" id="Empresa" class="form-control" value="<jsp:getProperty name="user" property="empresa"/>">
                        </div>
                        <div class="col-sm-6 center-block">
                            <label for="correo">Correo Electrónico<span class="required">*</span></label>
                            <input type="text" name="Correo" id="Correo" class="form-control" required autofocus value="<jsp:getProperty name="user" property="correo"/>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 center-block">
                            <label for="direccion">Dirección<span class="required">*</span></label>
                            <input type="text" name="Direccion" id="Direccion" class="form-control" required autofocus value="<jsp:getProperty name="user" property="direccion"/>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 center-block">
                            <label for="ciudad">Ciudad<span class="required">*</span></label>
                            <input type="text" name="Ciudad" id="Ciudad" class="form-control" required autofocus value="<jsp:getProperty name="user" property="ciudad"/>">
                        </div>
                        <div class="col-sm-6 center-block">
                            <label for="pais">País<span class="required">*</span></label>
                            <input type="text" name="Pais" id="Pais" class="form-control" required autofocus value="<jsp:getProperty name="user" property="pais"/>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 center-block">
                            <label for="zip">Código Postal<span class="required">*</span></label>
                            <input type="text" name="Zip" id="Zip" class="form-control" required autofocus value="<jsp:getProperty name="user" property="zip"/>">
                        </div>
                        <div class="col-sm-6 center-block">
                            <label for="estado">Estado<span class="required">*</span></label>
                            <input type="text" name="Estado" id="Estado" class="form-control" required autofocus value="<jsp:getProperty name="user" property="estado"/>">
                        </div>
                    </div>  
                    <div class="row">
                        <div class="col-sm-6 center-block">
                            <label for="tel">Teléfono<span class="required">*</span></label>
                            <input type="tel" name="Telefono" class="form-control" required autofocus value="<jsp:getProperty name="user" property="telefono"/>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 center-block">
                            <label for="tel">Contraseña<span class="required">*</span></label>
                            <input type="password" name="Password" class="form-control" required autofocus value="<jsp:getProperty name="user" property="password"/>">
                        </div>
                        <div class="col-sm-6 center-block">
                            <label for="tel">Confirma Contraseña<span class="required">*</span></label>
                            <input type="password" name="Password" class="form-control" required autofocus value="<jsp:getProperty name="user" property="password"/>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 center-block">
                            <label for="nacimiento">Fecha de nacimiento<span class="required">*</span></label>
                            <div class="form-group">
                                <div class='input-group date' id='datetimepicker'>
                                    <input type='text' class="form-control" />
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 center-block">
                            <label for="genero">Género<span class="required">*</span></label>
                            <!--<input type="genero" name="Genero" class="form-control"required autofocus value="<jsp:getProperty name="user" property="genero"/>">-->
                            <fieldset class="group-radios form-inline dob-fieldset">
                                <label class="radio-inline">
                                    <input type="radio" name="gender" title="Hombre" value="1">Hombre                            </label>
                                <label class="radio-inline">
                                    <input type="radio" name="gender" title="Mujer" value="2">Mujer                            </label>
                            </fieldset>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-6">
                            <input class="btn btn-lg btn-primary btn-block" type="reset" value="Resetear" />
                        </div>
                        <div class="col-sm-6">
                            <input class="btn btn-lg btn-primary btn-block" type="submit" value="Registrar">
                        </div>
                    </div>
                </form>  
            </div>
            <div class="col-sm-4 center-block"></div>  
        </div>
        <script type="text/javascript">
            $(function () {
                $('#datetimepicker').datetimepicker();
            });
        </script>

        <footer class="footer">
            <div class="container-footer">
                <p class="text-muted">Place sticky footer content here.</p>
            </div>
        </footer>
    </body>
</html>
