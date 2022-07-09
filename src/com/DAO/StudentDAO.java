package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.Model.Student;
import com.utils.DBContext;

public class StudentDAO {

	public static ArrayList<Student> getStudent(){
		ArrayList<Student>  list = null;
		
		Connection con = DBContext.connectDatabase();
		String sql = "SELECT  * FROM students";
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			Student student = null;
			list = new ArrayList<Student>();
			while(rs.next()){
				student = new Student();
				student.setId(rs.getString("Id"));
				student.setFirstName(rs.getString("FirstName"));
				student.setBirth(rs.getInt("Birth"));
				student.setGender(rs.getString("Gender"));
				student.setPhone(rs.getString("Phone"));
				student.setAddress(rs.getString("Address"));
				student.setClassId(rs.getInt("ClassId"));
				
				list.add(student);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	public static void main(String[] args) {
		System.out.print(getStudent().size());
	}
	
	
	
	
	
	
}

