package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Student_DAO;
@WebServlet("/adminsignup")
public class Adminsignup extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		long contact =Long.parseLong(req.getParameter("contact"));
		String email=req.getParameter("email");
		String password=req.getParameter("pass");
		int row;
		try {
			row = Student_DAO.saveAdmin(id, name, contact, email, password);
			if(row==1) {
				req.setAttribute("msg", "Admin Signup Success!!");
				req.getRequestDispatcher("adminsignup.jsp").include(req, resp);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			req.setAttribute("msg","Already admin exist!!");
			req.getRequestDispatcher("adminsignup.jsp").include(req, resp);
		}
		
	}

}
