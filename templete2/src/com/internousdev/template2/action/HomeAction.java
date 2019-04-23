//package com.internousdev.template2.action;
//
//import java.util.Map;
//
//import org.apache.struts2.interceptor.SessionAware;
//
//import com.internousdev.template2.dao.BuyItemDAO;
//import com.internousdev.template2.dto.BuyItemDTO;
//import com.opensymphony.xwork2.ActionSupport;
//
//public class HomeAction extends ActionSupport implements SessionAware{
//	public Map<String, Object> session;
//	public String execute() {
//		String result = "login";
//		if(session.containsKey("id")) {
//			BuyItemDAO bidao = new BuyItemDAO();
//			BuyItemDTO bidto = bidao.getBuyItemInfo();
//			session.put("id", bidto.getId());
//			session.put("buyItem_name", bidto.getItemName());
//			session.put("buyItem_price", bidto.getItemPrice());
//			result = SUCCESS;
//		}
//		return result;
//	}
//
//	@Override
//	public void setSession(Map<String, Object> session) {
//		this.session = session;
//	}
//
//	public Map<String, Object> getSession() {
//		return session;
//	}
//
//}

package com.internousdev.template2.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.template2.dao.BuyItemDAO;
import com.internousdev.template2.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class HomeAction extends ActionSupport implements SessionAware{
	public Map<String, Object> session;
	public List<BuyItemDTO> buyitemDTOList = new ArrayList<BuyItemDTO>();
	private BuyItemDAO bidao = new BuyItemDAO();
	public String execute() {
		String result = "login";
		
		if(session.containsKey("login_user_id")) {
			buyitemDTOList = bidao.getBuyItemInfo();;
			session.put("login_user_id", buyitemDTOList);
			if(buyitemDTOList.size() > 0) {
				if(buyitemDTOList.get(0) != null) {
					session.put("buyitemDTOList1", buyitemDTOList.get(0));
					System.out.println("buyitemDTOList1");
				}
				if(buyitemDTOList.get(1) != null) {
					session.put("buyitemDTOList2", buyitemDTOList.get(1));
					System.out.println("buyitemDTOList2");
				}
				if(buyitemDTOList.get(2) != null){
					session.put("buyitemDTOList3", buyitemDTOList.get(2));
					System.out.println("buyitemDTOList3");
				}
			result = SUCCESS;
			}
		}
		return result;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public Map<String, Object> getSession() {
		return session;
	}

}

