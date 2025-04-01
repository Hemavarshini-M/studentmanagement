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

@WebServlet("/savestudent")
public class AddStudent extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		int physics = Integer.parseInt(req.getParameter("phy"));
		int chemistry = Integer.parseInt(req.getParameter("chem"));
		int maths = Integer.parseInt(req.getParameter("maths"));
		Student_DTO s = new Student_DTO(id, name, physics, chemistry, maths);
		int row;
		try {
			row = Student_DAO.saveStudent(s);
			if (row == 1) {
				req.setAttribute("msg", "Student data saved Successfully!!");
				req.getRequestDispatcher("addstudent.jsp").include(req, resp);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			req.setAttribute("msg", "Student already exist!!!");
			req.getRequestDispatcher("addstudent.jsp").include(req, resp);
		}

	}

}
