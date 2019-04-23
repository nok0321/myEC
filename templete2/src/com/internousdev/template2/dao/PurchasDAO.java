package com.internousdev.template2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.template2.util.DBConnector;

public class PurchasDAO {
	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();
	private String sql = "INSERT INTO purchas_item_transaction(id, item_name, total_price, total_count) VALUES(?,?,?,?)";

	public void buyItemInfo(String id, String itemname, String itemprice, String count) throws SQLException {
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, itemname);
			ps.setString(3, itemprice);
			ps.setString(4, count);
			ps.execute();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			con.close();
		}
	}
}
