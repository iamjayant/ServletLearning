package first;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LogoutServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
		PrintWriter pw = res.getWriter();
		RequestDispatcher dis = req.getRequestDispatcher("login.jsp");
		dis.include(req, res);
		pw.println("u have logged out successfully");
	}
}
