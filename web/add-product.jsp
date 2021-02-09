
<%-- 
    Document   : basicPage
    Created on : 16 Dec 2020, 18:16:55
    Author     : be_me
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Product"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>OSHIRT</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    </head>

    <body>


        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="#">OSHIRT</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <c:if test="${empty SKUSER.firstName}">
                                <a class="nav-link" href="./login.jsp">Login
                                    <span class="sr-only">(current)</span>
                                </a>
                            </c:if>
                            <c:if test="${not empty SKUSER.firstName}">
                                <a class="nav-link" href="#">Logged in as ${SKUSER.firstName}
                                    <span class="sr-only">(current)</span>
                                </a>
                            </c:if>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Services</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Logout">Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="col-lg-12">
            <br/>
        </div>
        <!-- Page Content -->
        <div class="container bg-light">

            <div class="row">

                <div class="col-lg-12">
                    <br><br>

                    <h1 class="my-4">Add New Product</h1>
                       <div class="row">
                           
                        <c:url value="/productAdmin" var="insertProductUrl">
                                        <c:param name="action" value="insertProduct"/>
                                    </c:url>

                        <form action="${insertProductUrl}" method="POST">
                            <div class="form-group row">
                                <label for="name" class="col-4 col-form-label">Name</label> 
                                <div class="col-8">
                                    <input id="name" name="name" type="text" class="form-control" required="required">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="description" class="col-4 col-form-label">Description</label> 
                                <div class="col-8">
                                    <input id="description" name="description" type="text" class="form-control" required="required">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="price" class="col-4 col-form-label">Price</label> 
                                <div class="col-8">
                                    <input id="price" name="price" type="text" class="form-control" required="required">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="imageLocation" class="col-4 col-form-label">Image Location</label> 
                                <div class="col-8">
                                    <input id="imageLocation" name="imageLocation" type="text" class="form-control" required="required">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-4">Category</label> 
                                <div class="col-8">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input name="category" id="category_0" type="radio" class="custom-control-input" value="Shirt"> 
                                        <label for="category_0" class="custom-control-label">Shirt</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input name="category" id="category_1" type="radio" class="custom-control-input" value="Tie"> 
                                        <label for="category_1" class="custom-control-label">Customer</label>
                                    </div>
                                </div>
                            </div> 
                            <div class="form-group row">
                                <div class="offset-4 col-8">
                                    <button name="submit" type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </div>
                        </form> 

                    </div>
                    <!-- /.row -->

                </div>
                <!-- /.col-lg-9 -->

            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->
        <div class="col-lg-12">
            <br/>
        </div>
        <!-- Footer -->
        <footer class="py-5 bg-dark">
            <div class="container">
                <p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
            </div>
            <!-- /.container -->
        </footer>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    </body>

</html>
