<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>

<%
String a=request.getParameter("n1");

int price=Integer.parseInt(request.getParameter("n2"));
int quantity=Integer.parseInt(request.getParameter("n3"));
String b=request.getParameter("n4");



//out.println(b);
%>
<form action="order" method="post">


<div class="card" style="width: 18rem;">

<img src="<%=b%>"width="100%" height="200px"> <br>
  <div class="card-body">
Product Name<input type="text" name="n1"  value="<%=a %>"><br><br>
Product price<input type="text" name="n2"  value="<%=price %>"><br><br>
Product Quantity<input type="text" name="n3"><br><br>
<input type="hidden" name="n4" value="<%=b %>">


<input type="submit">
</div>
</div>
</form>
</body>
</html>