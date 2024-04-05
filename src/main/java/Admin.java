

import java.io.IOException;
import java.sql.*;
import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Admin
 */
@WebServlet("/Admin")
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String a=request.getParameter("n1");
		String b=request.getParameter("n2");
		
		if(a.equals("admin") && b.equals("Praveen@02"))
		{
			response.sendRedirect("index.jsp");
		}
		else
		{
			response.sendRedirect("admin.jsp");
		}
	}

}
