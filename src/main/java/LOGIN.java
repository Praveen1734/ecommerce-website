

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LOGIN")
public class LOGIN extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String a=request.getParameter("n1");
			String b=request.getParameter("n2");
			PrintWriter sc=response.getWriter();
			
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/praveen","root","Praveen@02");
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery("select * from reg where username='"+a+"' and password='"+b+"'");
				if(rs.next())
				{
					HttpSession session=request.getSession();
					session.setAttribute("ex", a);
					
					response.sendRedirect("home1.jsp");
				}
				else if(a.equals("admin") && b.equals("Praveen@02"))
				{
					response.sendRedirect("index.jsp");
				}
				else
				{
					sc.print("<html><body><h1>your enter wrong username and password</h1></body></html>");
					response.sendRedirect("login.jsp");
				}
			}
			catch(Exception e)
			{
				sc.println(e);
			}
		}
		}
	
