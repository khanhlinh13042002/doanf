package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import models.Product;

public class ProductDAO extends DBContext {

//	Connection conn = null;
//	PreparedStatement ps = null;
//	ResultSet rs = null;
//
//	public List<Product> getAll() {
//		List<Product> list = new ArrayList<>();
//		String query = "select * from product";
//		try {
//			conn = new DBContext().getConnection();
//			ps = conn.prepareStatement(query);
//			rs = ps.executeQuery();
//			while (rs.next()) {
//				Product p = new Product(
//						rs.getInt("productID"), 
//						rs.getString("productName"),
//						rs.getFloat("productPrice"), 
//						rs.getInt("amount"));
//
//			}
//		} catch (Exception e) {
//			System.out.println(e);
//		}
//		return list;
//	}
//
//	public Product getProductByID(int productID) {
//		String query = "select * from product where id_product = ?";
//		try {
//			conn = new DBContext().getConnection();
//			ps = conn.prepareStatement(query);
//			ps.setInt(1, productID);
//			rs = ps.executeQuery();
//			if (rs.next()) {
//				return new Product(productID, 
//						rs.getString("productName"), 
//						rs.getFloat("productPrice"),
//						rs.getInt("amount"));
//			}
//		} catch (Exception e) {
//			System.out.println(e);
//		}
//		return null;
//
//	}
}
