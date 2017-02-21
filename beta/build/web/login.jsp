<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.User"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-theme.min.css" rel="stylesheet">
        <link href="css/custom.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <jsp:useBean id="user" scope="request" class="beans.User"></jsp:useBean>
        <div class="container">
            <div class="row">
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
                        <li><a href="index.jsp">Home</a></li>
                        <li class="active"><a href="login.jsp">Login<span class="sr-only">(current)</span></a></li>
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
            </div>
            <br><br><br>
            <div class="row">
                <div class="col-md-4 center-block"></div>
                <div class="col-md-4 center-block">
                    <form action="LoginController" method="post">
                    <input type="text" name="Nombre" id="Nombre" class="form-control" placeholder="Nombre" required autofocus value="<jsp:getProperty name="user" property="nombre"/>">
                    <br>
                    <input type="password" id="Password" class="form-control" placeholder="Password" required name="Password" value="<jsp:getProperty name="user" property="password"/>">
                    <br>
                    <div class="row">
                        <div class="col-md-6">
                            <a class="btn btn-lg btn-primary btn-block" href="registry.jsp">Registrate</a>
                        </div>
                        <div class="col-md-6">
                            <button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button> 
                        </div>
                    </div>
                    </form>
                </div>
                <div class="col-md-4 center-block"></div>
            </div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>          
        <footer class="footer">
            <div class="container-footer">
              <p class="text-muted">Place sticky footer content here.</p>
            </div>
          </footer>
    </body>
</html>
