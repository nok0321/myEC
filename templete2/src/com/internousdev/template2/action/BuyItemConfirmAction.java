package com.internousdev.template2.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.template2.dao.BuyItemCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemConfirmAction extends ActionSupport implements SessionAware{
	private Map<String, Object> session;
	private BuyItemCompleteDAO bicdao = new BuyItemCompleteDAO();
	public String execute() throws SQLException {
		bicdao.buyItemInfo(
			session.get("id").toString(),
			session.get("login_user_id").toString(),
			session.get("buyItem_price").toString(),
			session.get("count").toString(),
			session.get("pay").toString());
		System.out.println(session.get("id"));
		System.out.println(session.get("login_user_id"));
		System.out.println(session.get("buyItem_price"));
		System.out.println(session.get("count"));
		System.out.println(session.get("pay"));
		String result = SUCCESS;
		return result;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
