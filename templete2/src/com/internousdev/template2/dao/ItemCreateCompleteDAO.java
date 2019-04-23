package com.internousdev.template2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.template2.util.DBConnector;
import com.internousdev.template2.util.DateUtil;

public class ItemCreateCompleteDAO {
	private DateUtil du = new DateUtil();
	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();
	private String sql = "INSERT INTO item_info_transaction(item_name, item_price, item_stock, insert_date) VALUE(?,?,?,?)";

	public void createUser(String itemName, String itemPrice, String itemStock) throws SQLException {
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, itemName);
			ps.setString(2, itemPrice);
			ps.setString(3, itemStock);
			ps.setString(4, du.getDate());
			ps.execute();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			con.close();
		}
	}

}
