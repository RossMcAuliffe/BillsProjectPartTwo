<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.User"%>
<%@page import="model.Product"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>OSHIRT</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/shop-item.css" rel="stylesheet">

</head>

<body>
<% Product singleProduct = (Product) session.getAttribute("SingleProduct"); %>

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
                                <a class="nav-link" href="./login.jsp">Hi ${SKUSER.firstName}
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
                            <a class="nav-link" href="#">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>


  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <div class="col-lg-3">
        <h1 class="my-4">Products</h1>
        <div class="list-group">
          <a href="#" class="list-group-item active">Shirts</a>
          <a href="#" class="list-group-item">Ties</a>
        </div>
      </div>
        
      <!-- /.col-lg-3 -->
       <% if (singleProduct != null) { %>
       
        <div class="col-lg-9">

        <div class="card mt-4">
        
          <img class="" src="images/<%= singleProduct.getImageLocation() %>" alt=""> 
          <div class="card-body">
            <h3 class="card-title"><%= singleProduct.getName() %></h3>
            <h4><%= singleProduct.getPrice() %></h4>
            <h4><%= singleProduct.getDescription() %></h4>
            
          </div>
        </div>
        <!-- /.card -->

        <div class="card card-outline-secondary my-4">
          <div class="card-header">
            Let's Go Shopping!
          </div>
          <div class="card-body">
         
               <form action="CartServlet" method="post">
                    <input type="hidden" name="productId" 
                           value="<%= singleProduct.getId() %>">
                    <input type="submit" 
                           value="Add To Cart">
              </form>    
              
          </div>
        </div>
        <!-- /.card -->
       <% } %>
       
       


      </div>
      <!-- /.col-lg-9 -->

    </div>

  </div>
  <!-- /.container -->

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
