<%-- 
    Document   : index
    Created on : 20-feb-2017, 17:11:55
    Author     : ricar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                <li><a href="login.jsp">Login</a></li>
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
        <br><br>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
              <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
              <li data-target="#myCarousel" data-slide-to="1"></li>
              <li data-target="#myCarousel" data-slide-to="2"></li>
              <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
              <div class="item active">
                <img src="img/sample.jpg" alt="sample">
                 <div class="container">
                    <div class="carousel-caption d-none d-md-block">
                      <h1>Noticia 1.</h1>
                      <p>Test de noticia #1.</p>
                      <p><a class="btn btn-lg btn-primary" href="#" role="button">Ir a la noticia</a></p>
                    </div>
                  </div>
              </div>

              <div class="item">
                <img src="img/sample2.jpg" alt="sample">
                <div class="container">
                    <div class="carousel-caption d-none d-md-block">
                      <h1>Noticia 2.</h1>
                      <p>Test de noticia #2.</p>
                      <p><a class="btn btn-lg btn-primary" href="#" role="button">Ir a la noticia</a></p>
                    </div>
                  </div>
              </div>

              <div class="item">
                <img src="img/sample3.jpg" alt="sample">
                <div class="container">
                    <div class="carousel-caption d-none d-md-block">
                      <h1>Noticia 3.</h1>
                      <p>Test de noticia #3.</p>
                      <p><a class="btn btn-lg btn-primary" href="#" role="button">Ir a la noticia</a></p>
                    </div>
                  </div>
              </div>

              <div class="item">
                <img src="img/sample4.jpg" alt="sample">
                <div class="container">
                    <div class="carousel-caption d-none d-md-block">
                      <h1>Noticia 4.</h1>
                      <p>Test de noticia #4.</p>
                      <p><a class="btn btn-lg btn-primary" href="#" role="button">Ir a la noticia</a></p>
                    </div>
                  </div>
              </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
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
