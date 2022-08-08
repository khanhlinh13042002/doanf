package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import models.CategoryProduct;
import models.Product;

public class CategoryDAO {
	Connection connection = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public List<Product> getAllProductByCategory(String categoryProductID) {
		List<Product> list = new ArrayList<>();
		String query = "select * from product" + " where id_category = ?";
		try {
			connection = new DBContext().getConnection();
			ps = connection.prepareStatement(query);
			ps.setString(1, categoryProductID);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getFloat(3), rs.getNString(4), rs.getInt(5),
						rs.getString(7), rs.getInt(6), rs.getString(8)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	public List<CategoryProduct> getAllCategoryProducts() {
		List<CategoryProduct> list = new ArrayList<>();
		String query = "select * from category_product";

		try {
			connection = new DBContext().getConnection();
			ps = connection.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new CategoryProduct(rs.getInt(1), rs.getString(2)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	public static void main(String[] args) {
		CategoryDAO categoryDAO = new CategoryDAO();
		List<Product> list = categoryDAO.getAllProductByCategory("1");
		for (Product o : list) {
			System.out.println(o);

		}
		
	}

}
