package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;

import context.DBContext;
import models.Cart;
import models.Item;
import models.User;

public class OrderDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	public void addOrder(Cart cart, User user ) {
		LocalDate curDate = java.time.LocalDate.now();
		String date = curDate.toString();
		try {
			String query = "insert into oder value ? ? ? ?";
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1,user.getUserID());
			ps.setString(2,date);
			ps.setFloat(3,cart.getTotalMoney());
			ps.executeUpdate();
			//lấy id của order vừa add
			String sql = "select top 1 id_oder from oder order by id_oder desc";
			PreparedStatement st = conn.prepareStatement(sql);
			rs = st.executeQuery();
			if(rs.next()) {
				int id_order = rs.getInt(1);
				for(Item i: cart.getItems()) {
					String sql2 = "insert into detail_order values ? ? ? ? ?";
					PreparedStatement st2 = conn.prepareStatement(sql2);
					st2.setInt(1, id_order);
					st2.setInt(2,i.getProduct().getProductID());
					st2.setInt(3,i.getQuantity());
					st2.setDouble(4,i.getPrice());
					st2.executeUpdate();
				}
			}
			}catch(Exception e) {
			
		}
		
	}

}
