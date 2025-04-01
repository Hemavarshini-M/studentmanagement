package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Student_DAO;
@WebServlet("/deletestudent")
public class DeleteStudent extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		try {
			int row=Student_DAO.deleteStudent(id);
			if(row==1) {
				req.setAttribute("row", "1");
				req.getRequestDispatcher("adminhome.jsp").include(req, resp);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}

}
