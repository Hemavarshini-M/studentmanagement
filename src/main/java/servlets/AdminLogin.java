package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Student_DAO;

@WebServlet("/adminlogin")
public class AdminLogin extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		String email=req.getParameter("email");
		String pass=req.getParameter("pass");
		boolean valid;
		try {
			valid = Student_DAO.findAdmin(email, pass);
			if(valid) {
				req.setAttribute("msg", "Login Success");
				req.getRequestDispatcher("adminlogin.jsp").include(req, resp);
			}
			else {
				req.setAttribute("msg", "Invalid Credentails");
				req.getRequestDispatcher("adminlogin.jsp").include(req, resp);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
}
