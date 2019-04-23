package com.internousdev.template2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.template2.dto.UserListDTO;
import com.internousdev.template2.util.DBConnector;

public class UserListDAO {
	List<UserListDTO> userListDTOList = new ArrayList<UserListDTO>();

	public List<UserListDTO> select() {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		String sql = "SELECT * FROM login_user_transaction";
		try {
			//実行するSQL文を指定
			PreparedStatement ps = con.prepareStatement(sql);
			//SELECTを実行する"executeQuery"メソッドを実行
			ResultSet rs = ps.executeQuery();

			//ResultSetインターフェースの結果として"select * from users"を取得できる
			//行からデータを取得
			while(rs.next()) {

				UserListDTO dto = new UserListDTO();
				dto.setUserName(rs.getString("login_id"));
				dto.setLoginPassword(rs.getString("login_pass"));
				dto.setLoginId(rs.getString("user_name"));
				dto.setInsert_date(rs.getString("insert_date"));
				userListDTOList.add(dto);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}try {
			con.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return userListDTOList;
	}

}
