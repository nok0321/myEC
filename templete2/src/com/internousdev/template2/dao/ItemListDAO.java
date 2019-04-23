package com.internousdev.template2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.template2.dto.ItemListDTO;
import com.internousdev.template2.util.DBConnector;

public class ItemListDAO {
	List<ItemListDTO> itemListDTOList = new ArrayList<ItemListDTO>();

	public List<ItemListDTO> select() {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		String sql = "SELECT * FROM item_info_transaction";
		try {
			//実行するSQL文を指定
			PreparedStatement ps = con.prepareStatement(sql);
			//SELECTを実行する"executeQuery"メソッドを実行
			ResultSet rs = ps.executeQuery();

			//ResultSetインターフェースの結果として"select * from users"を取得できる
			//行からデータを取得
			while(rs.next()) {

				ItemListDTO dto = new ItemListDTO();
				dto.setItemName(rs.getString("item_name"));
				dto.setItemPrice(rs.getString("item_price"));
				dto.setStock(rs.getString("item_stock"));
				dto.setInsert_date(rs.getString("insert_date"));
				itemListDTOList.add(dto);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}try {
			con.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return itemListDTOList;
	}

}
