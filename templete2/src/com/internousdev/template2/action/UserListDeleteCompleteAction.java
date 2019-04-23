package com.internousdev.template2.action;

import java.sql.SQLException;

import com.internousdev.template2.dao.UserListDeleteCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class UserListDeleteCompleteAction extends ActionSupport{
	private String message;
	private UserListDeleteCompleteDAO uLdao = new UserListDeleteCompleteDAO();
	public String execute() throws SQLException {
		String result = ERROR;
		int res = uLdao.UserListDelete();
		if(res > 0) {
			setMessage("ユーザー情報を正しく削除しました。");
			System.out.println("ユーザー情報を正しく削除しました。");
		}else if(res == 0) {
			setMessage("ユーザー情報の削除に失敗しました。");
			System.out.println("ユーザー情報の削除に失敗しました。");
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
