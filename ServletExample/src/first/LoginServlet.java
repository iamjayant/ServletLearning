package first;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException {
		PrintWriter pw = res.getWriter();
		ServletContext context = getServletContext();
		String firstName = req.getParameter("first");
		String lastName = req.getParameter("last");
		if(firstName.equalsIgnoreCase(context.getInitParameter("fname")) && lastName.equalsIgnoreCase(context.getInitParameter("lname")) ) {
			RequestDispatcher dis = req.getRequestDispatcher("homepage");
			dis.forward(req, res);
		}else {
			//pw.println("u entered wrong name<\br>");
			RequestDispatcher dis = req.getRequestDispatcher("login.jsp");
			dis.include(req, res);
			pw.println("u have entered the worng credentials");
		}
	}
}