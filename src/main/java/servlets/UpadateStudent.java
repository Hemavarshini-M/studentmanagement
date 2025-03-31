package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Student_DAO;

@WebServlet("/editstudent")
public class UpadateStudent extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		int physics = Integer.parseInt(req.getParameter("phy"));
		int chemistry = Integer.parseInt(req.getParameter("chem"));
		int maths = Integer.parseInt(req.getParameter("maths"));
		try {
			int row=Student_DAO.updateStudent(id, name, physics, chemistry, maths);
			if(row==1) {
				req.setAttribute("success", "1");
				req.getRequestDispatcher("editstudent.jsp").include(req, resp);
			}
			else {
				req.setAttribute("success", "0");
				req.getRequestDispatcher("editstudent.jsp").include(req, resp);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
