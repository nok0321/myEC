package com.internousdev.template2.action;

import java.sql.SQLException;

import com.internousdev.template2.dao.ItemListDeleteCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemListDeleteCompleteAction extends ActionSupport{
	private String message;
	private ItemListDeleteCompleteDAO iLdao = new ItemListDeleteCompleteDAO();
	public String execute() throws SQLException {
		String result = ERROR;
		int res = iLdao.ItemListDelete();
		if(res > 0) {
			setMessage("商品情報を正しく削除しました。");
			System.out.println("商品情報を正しく削除しました。");
		}else if(res == 0) {
			setMessage("商品情報の削除に失敗しました。");
			System.out.println("商品情報の削除に失敗しました。");
		}
		result = SUCCESS;
		return result;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
