

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
import java.io.*;

@WebServlet("/order")
public class order extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String a=request.getParameter("n1");
		int price=Integer.parseInt(request.getParameter("n2"));
		int quantity=Integer.parseInt(request.getParameter("n3"));
		String b=request.getParameter("n4");
		PrintWriter sc=response.getWriter();
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/praveen","root","Praveen@02");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from product where pname='"+a+"'");
			if(rs.next())
			{
				int ab=rs.getInt(4);
				int c=ab-quantity;
				if(c<0)
				{
					sc.println("out of stock");
				}
			
			else
			{
				
				st.executeUpdate("insert into order12 values('"+a+"',"+price+","+quantity+",'"+b+"')");
				st.executeUpdate("update product set pquantity="+c+" where pname='"+a+"'");
			}
		}
			}
		catch(Exception e)
		{
			sc.println(e);
		}
	}

}
