

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.io.*;

@WebServlet("/addproduct")
public class addproduct extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int a=Integer.parseInt(request.getParameter("n1"));
		String b=request.getParameter("n2");
		int c=Integer.parseInt(request.getParameter("n3"));
		int d=Integer.parseInt(request.getParameter("n4"));
		String e=request.getParameter("n5");
		PrintWriter sc=response.getWriter();
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/praveen","root","Praveen@02");
			PreparedStatement st=con.prepareStatement("insert into product values(?,?,?,?,?)");
			st.setInt(1, a);
			st.setString(2,b);
			st.setInt(3,c);
			st.setInt(4, d);
			st.setString(5, e);
			st.executeUpdate();	
			sc.println("insert successfully");
		}
		catch(Exception e1)
		{
			sc.println(e1);
		}
		
	}

}
