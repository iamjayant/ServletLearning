package first;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HomePageServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException{
		req.getSession().setAttribute("fname", req.getParameter("first"));
		req.getSession().setAttribute("lname", req.getParameter("last"));
		RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/homepage.jsp");
		dis.include(req, res);
	}
}
