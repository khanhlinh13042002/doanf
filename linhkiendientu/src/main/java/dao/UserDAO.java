package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import models.Admin;
import models.User;

public class UserDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	public List<User> getAllUser(){
		List<User> list = new ArrayList<>();
		String query = "select * from user";
	
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new User(rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getDate(5),
						rs.getString(6),
						rs.getString(7)));
			}
		
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	
		public User getUserAccount(String name, String pass) {
			List<User> list = this.getAllUser();
			for (User user : list) {
				if (user.getUserAcc().equals(name) && user.getPassword().equals(pass)){
					return user;
				}
			}
			return null;
		}
		
		public static void main(String[] args) {
			UserDAO user = new UserDAO();
			List<User> list = user.getAllUser();
			for (User o : list) {
				System.out.println(o);
			}
		}
}
	


