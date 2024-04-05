<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/praveen","root","Praveen@02");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from order12");
	while(rs.next())
	{
		out.println("PRODUCTS="+rs.getString(1)+",");
		out.println("<br><br>");
		out.println("PRICE="+rs.getString(2)+",");
		out.println("<br><br>");
		out.println("NOS="+rs.getString(3)+",");
		
		out.println("<br><br>");
		 %>
		<img src="<%=rs.getString(4) %>"width="200px" height="200px"> <br>
		<%
	}
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>