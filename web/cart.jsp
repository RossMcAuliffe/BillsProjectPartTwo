<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>SHIRT Cart</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="cart.css">
    <style>
        body {
            background-color: white;
        }
        
        input.type[submit] {
              border:1px solid #ffffff;
              background:#333333;
              border-radius: 10px;
              color:#fff;
        }
            
        
    </style>
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
              <a class="nav-link" href="index_1.html">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Catalog</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Contact</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="index.html">Login</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <br><br><br><br><br><br>
    
    <h1>Your cart</h1>
    <table class="center">
      <tr>
        <th>Quantity</th>
        <th>Name</th>
        <th>Image</th>
        <th>Description</th>
        <th>Price</th>
        <th></th>
      </tr>
      <c:forEach var="item" items="${cart.items}">
      <tr>
        <td>
            <form action="CartServlet" method="post">
                <input type="hidden" name="productId" 
                       value="<c:out value='${item.product.id}'/>">
                
                <input type=text name="quantity" 
                       value="<c:out value='${item.quantity}'/>"  
                       id="quantity">
                <input type="submit" value="Update">
            </form>
        </td>
        <td><c:out value='${item.product.name}'/></td><br>
        <td><img style='widht: 20em; height:10em;' src="images/${item.product.imageLocation}" alt=""></td>
        <td><c:out value='${item.product.description}'/></td>
        <td><c:out value='${item.product.price}'/></td>  
        <td>
            <form action="CartServlet" method="post">
                <input type="hidden" name="productId" 
                       value="<c:out value='${item.product.id}'/>">
                <input type="hidden" name="quantity" value="0">
                <input type="submit" value="Remove Item">
            </form>
        </td>
      </tr>
      </c:forEach>
    </table>

    <p><b>To change the quantity</b>, enter the new quantity 
        and click on the Update button.</p>

    <form action="" method="post">
        <input type="hidden" name="action" value="shop">
        <input type="submit" value="Continue Shopping">
    </form>

    <form action="" method="post">
        <input type="hidden" name="action" value="checkout">
        <input type="submit" value="Checkout">
    </form>

    <p>&copy; Copyright ${currentYear} Mike Murach &amp; Associates, Inc.
        All rights reserved.</p>

</body>
  

</html>