//package com.internousdev.template2.dao;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//
//import com.internousdev.template2.dto.BuyItemDTO;
//import com.internousdev.template2.util.DBConnector;
//
//public class BuyItemDAO {
//	private DBConnector db = new DBConnector();
//	private Connection con = db.getConnection();
//	private BuyItemDTO bidto = new BuyItemDTO();
//	public BuyItemDTO getBuyItemInfo() {
//		String sql = "SELECT id, item_name, item_price FROM item_info_transaction";
//		try {
//			PreparedStatement ps = con.prepareStatement(sql);
//			ResultSet rs = ps.executeQuery();
//			if(rs.next()) {
//				bidto.setId(rs.getInt("id"));
//				bidto.setItemName(rs.getString("item_name"));
//				bidto.setItemPrice(rs.getString("item_price"));
//				System.out.println(rs.getString("item_name"));
//				System.out.println(rs.getString("item_price"));
//			}
//		
//		}catch(Exception e) {
//			e.printStackTrace();
//		}
//		return bidto;
//	}
//	
//	
//
//	public BuyItemDTO getBuyItemDTO() {
//		return bidto;
//	}
//
//}

package com.internousdev.template2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.template2.dto.BuyItemDTO;
import com.internousdev.template2.util.DBConnector;

public class BuyItemDAO {
	List<BuyItemDTO> buyItemDTOList = new ArrayList<BuyItemDTO>();
	DBConnector db = new DBConnector();
	Connection con = db.getConnection();

	public List<BuyItemDTO> getBuyItemInfo() {
		

		String sql = "SELECT id, item_name, item_price FROM item_info_transaction";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while(rs.next()) {

				BuyItemDTO dto = new BuyItemDTO();
				dto.setItemName(rs.getString("item_name"));
				dto.setItemPrice(rs.getString("item_price"));
				buyItemDTOList.add(dto);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}try {
			con.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return buyItemDTOList;
	}
	
	public void buyItemInfo(String id, String itemname, String itemprice, String count) throws SQLException {
		String sql = "INSERT INTO purchas_item_transaction(id, item_name, total_price, total_count) VALUES(?,?,?,?)";

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

