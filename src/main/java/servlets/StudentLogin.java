package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Student_DAO;
import DTO.Student_DTO;
@WebServlet("/studentlogin")
public class StudentLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		try {
			Student_DTO s=Student_DAO.findStudent(id);
			if(s!=null) {
				req.setAttribute("student", s);
				req.setAttribute("msg", "Login Success!!");
				req.getRequestDispatcher("studentlogin.jsp").forward(req, resp);
			}
			else {
				req.setAttribute("msg", "Login Failed!!");
				req.getRequestDispatcher("studentlogin.jsp").forward(req, resp);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
