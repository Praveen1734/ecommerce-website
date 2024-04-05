<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Product<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="add product.jsp">Add Product</a></li>
          <li><a href="update.jsp">Update Product</a></li>
          <li><a href="#">Delete Product</a></li>
        </ul>
      </li>
      <li><a href="User info.jsp">user info</a></li>
      <li><a href="orders.jsp">order</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
 <center><h3>Welcome to Admin Page</h3></center> 
<!--   <p>This example adds a dropdown menu for the "Page 1" button in the navigation bar.</p> -->
</div>
</body>
</html>