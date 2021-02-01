<%-- 
    Document   : basicPage
    Created on : 16 Dec 2020, 18:16:55
    Author     : be_me
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Bare - Start Bootstrap Template</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    </head>

    <body>

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
            <div class="container">
                <a class="navbar-brand" href="#">Start Bootstrap</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Home
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Services</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Page Content -->
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h1 class="mt-5">Add Product Information</h1>
                    <p class="lead">Please add new products here!</p>
                    <form>
                        <div class="form-group row">
                            <label for="name" class="col-4 col-form-label">Name</label> 
                            <div class="col-8">
                                <input id="name" name="name" type="text" class="form-control" aria-describedby="nameHelpBlock" required="required"> 
                                <span id="nameHelpBlock" class="form-text text-muted">Title of Image</span>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="description" class="col-4 col-form-label">Description</label> 
                            <div class="col-8">
                                <input id="description" name="description" type="text" class="form-control" aria-describedby="descriptionHelpBlock" required="required"> 
                                <span id="descriptionHelpBlock" class="form-text text-muted">Please Enter description</span>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="price" class="col-4 col-form-label">Price</label> 
                            <div class="col-8">
                                <input id="price" name="price" type="text" class="form-control" size="20" required="required" aria-describedby="priceHelpBlock"> 
                                <span id="priceHelpBlock" class="form-text text-muted">Enter Price</span>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="imageLocation" class="col-4 col-form-label">Image Location</label> 
                            <div class="col-8">
                                <input id="imageLocation" name="imageLocation" type="text" class="form-control" required="required">
                            </div>
                        </div> 
                        <div class="form-group row">
                            <div class="offset-4 col-8">
                                <button name="submit" type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.slim.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    </body>

</html>
