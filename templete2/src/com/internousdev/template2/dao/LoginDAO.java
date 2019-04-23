package com.internousdev.template2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.internousdev.template2.dto.LoginDTO;
import com.internousdev.template2.util.DBConnector;

public class LoginDAO {
	public LoginDTO getLoginUserInfo(String loginUserId, String loginPassword) {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		LoginDTO ldto = new LoginDTO();
		String sql = "SELECT * FROM login_user_transaction where login_id=? AND login_pass=?";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, loginUserId);
			ps.setString(2, loginPassword);
			ResultSet rs = ps.executeQuery();

			if(rs.next()) {
				ldto.setLoginId(rs.getString("login_id"));
				ldto.setLoginPassword(rs.getString("login_pass"));
				ldto.setUserName(rs.getString("user_name"));

				if(!(rs.getString("login_id").equals(null))) {
					ldto.setLoginFlg(true);
				}
				ldto.setAdminFlg(rs.getString("admin_flg"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return ldto;
	}

}
