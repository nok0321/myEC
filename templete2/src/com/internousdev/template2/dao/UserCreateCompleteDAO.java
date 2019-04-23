package com.internousdev.template2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.template2.util.DBConnector;
import com.internousdev.template2.util.DateUtil;

public class UserCreateCompleteDAO {
	private DateUtil du = new DateUtil();
	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();
	private String sql = "INSERT INTO login_user_transaction(login_id, login_pass, user_name, insert_date) VALUE(?,?,?,?)";

	public void createUser(String loginUserId, String loginUserPassword, String userName) throws SQLException {
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, loginUserId);
			ps.setString(2, loginUserPassword);
			ps.setString(3, userName);
			ps.setString(4, du.getDate());
			ps.execute();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			con.close();
		}
	}

}
