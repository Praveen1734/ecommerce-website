<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="py-2 bg-light border-bottom">
    <div class="container d-flex flex-wrap">
      <ul class="nav me-auto">
        <li class="nav-item"><a href="#" class="nav-link link-dark px-2 active" aria-current="page">Home</a></li>
        <li class="nav-item"><a href="#" class="nav-link link-dark px-2">Features</a></li>
        <li class="nav-item"><a href="#" class="nav-link link-dark px-2">Pricing</a></li>
        <li class="nav-item"><a href="#" class="nav-link link-dark px-2">FAQs</a></li>
        <li class="nav-item"><a href="#" class="nav-link link-dark px-2">About</a></li>
      </ul>
      <ul class="nav">
        <li class="nav-item"><a href="#" class="nav-link link-dark px-2">Login</a></li>
        <li class="nav-item"><a href="#" class="nav-link link-dark px-2">Sign up</a></li>
      </ul>
    </div>
  </nav>
Welcome to our page
<%
String a=session.getAttribute("ex").toString();
out.println(a);
out.println("<br><br>");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/praveen","root","Praveen@02");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from product");
	while(rs.next())
	{
		%>
		<form action="order.jsp" method="post">
		
		
		<div class="card" style="width: 18rem;">
  <input type="hidden" name="n1"  value="<%=rs.getString(2) %>">
	<img src="<%=rs.getString(5) %>"width="100%" height="200px"> <br>
  <div class="card-body">
    <h5 class="card-title">
    <input type="hidden" name="n1" value="<%=rs.getString(2) %>">
    <input type="hidden" name="n2" value="<%=rs.getString(3) %>"><%//Price%>
		<input type="hidden" name="n3" value="<%=rs.getString(4) %>"><%//Product quantity%>
		<input type="hidden" name="n4" value="<%=rs.getString(5) %>">
    </h5>
    	Name : <%=rs.getString(2)%><br>
		
		Price : <%=rs.getString(3)%><br>
		<input type="submit">
  </div>
</div>
		
		
		
		
				
		
		
		
		
		
		
			
				
	</form>
	<%}
}
catch(Exception e)
{
	
}
%>
</body>

</html>