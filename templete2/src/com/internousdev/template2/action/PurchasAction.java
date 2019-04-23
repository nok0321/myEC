package com.internousdev.template2.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.template2.dao.PurchasDAO;
import com.opensymphony.xwork2.ActionSupport;

public class PurchasAction extends ActionSupport implements SessionAware{
	private Map<String, Object> session;
	private PurchasDAO pdao = new PurchasDAO();
	public String execute() throws SQLException {
		pdao.buyItemInfo(
			session.get("id").toString(),
			session.get("itemname").toString(),
			session.get("itemprice").toString(),
			session.get("count").toString());
		System.out.println(session.get("id"));
		System.out.println(session.get("itemname"));
		System.out.println(session.get("itemprice"));
		System.out.println(session.get("count"));
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
