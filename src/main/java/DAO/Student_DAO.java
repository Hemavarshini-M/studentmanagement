package DAO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.protocol.Resultset;

import DTO.Student_DTO;
public class Student_DAO {
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/office", "root", "root");
			return con;
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public static int saveStudent(Student_DTO s) throws SQLException {
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("insert into student values(?,?,?,?,?)");
		pst.setInt(1,s.getId());
		pst.setString(2, s.getName());
		pst.setInt(3,s.getPhysics());
		pst.setInt(4,s.getChemistry());
		pst.setInt(5,s.getMaths());
		return pst.executeUpdate();
	}
	public static Student_DTO findStudent(int id) throws SQLException {
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("select * from student where id=?");
		pst.setInt(1,id);
		ResultSet rs=pst.executeQuery();
		if(rs.next()) {
			Student_DTO s=new Student_DTO(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getInt(4),rs.getInt(5));
			return s;
		}
		return null;
	}
	public static int deleteStudent(int id) throws SQLException {
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("delete from student where id=?");
		pst.setInt(1,id);
		return pst.executeUpdate();
	}
	public static List<Student_DTO> findAllStudent() throws SQLException {
		Connection con=getConnection();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from student");
		List<Student_DTO> l=new ArrayList<>();
		while(rs.next()) {
			Student_DTO s=new Student_DTO(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getInt(4),rs.getInt(5));
			l.add(s);
		}
		return l;
	}
	public static boolean findAdmin(String email,String password) throws SQLException {
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("select * from admin where email=? and password=?");
		pst.setString(1,email );
		pst.setString(2, password);
		ResultSet rs=pst.executeQuery();
		if(rs.next()) {
			return true;	
		}
		else {
			return false;
		}
		
		}
	public static int saveAdmin(int id,String name,long contact,String email,String Password) throws SQLException {
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("insert into admin values(?,?,?,?,?)");
		pst.setInt(1, id);
		pst.setString(2, name);;
		pst.setLong(3, contact);
		pst.setString(4, email);
		pst.setString(5, Password);
		return pst.executeUpdate();
	}
	public static int updateStudent(int id,String name,int physics,int chemistry,int maths ) throws SQLException {
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("update student set name=?,physics=?,Chemistry=?,maths=? where id=? ");
		pst.setString(1,name);	
		pst.setInt(2,physics);
		pst.setInt(3, chemistry);
		pst.setInt(4, maths);
		pst.setInt(5,id);
		return pst.executeUpdate();
	}
}
