//package com.internousdev.template2.action;
//
//import java.util.Map;
//
//import org.apache.struts2.interceptor.SessionAware;
//
//import com.internousdev.template2.dao.BuyItemDAO;
//import com.internousdev.template2.dao.LoginDAO;
//import com.internousdev.template2.dto.BuyItemDTO;
//import com.internousdev.template2.dto.LoginDTO;
//import com.opensymphony.xwork2.ActionSupport;
//
//public class LoginAction extends ActionSupport implements SessionAware{
//	private String loginUserId;
//	private String loginPassword;
//	public Map<String, Object> session;
//	private LoginDAO ldao = new LoginDAO();
//	private LoginDTO ldto = new LoginDTO();
//	private BuyItemDAO bidao = new BuyItemDAO();
//
//	public String execute() {
//		String result = ERROR;
//		ldto = ldao.getLoginUserInfo(loginUserId, loginPassword);
//		session.put("loginUser", ldto);
//		
//		if(((LoginDTO)session.get("loginUser")).getLoginFlg()) {
//			if	(((LoginDTO)session.get("loginUser")).getAdminFlg() != null) {
//				result = "ADMIN";
//			}else {
//				result = SUCCESS;
//				BuyItemDTO bidto = bidao.getBuyItemInfo();
//
//				session.put("login_user_id", ldto.getLoginId());
//				session.put("id", bidto.getId());
//				session.put("buyItem_name", bidto.getItemName());
//				session.put("buyItem_price", bidto.getItemPrice());
//				return result;
//			}
//			
//		}
//		return result;
//	}
//
//	public String getLoginUserId() {
//		return loginUserId;
//	}
//
//	public void setLoginUserId(String loginUserId) {
//		this.loginUserId = loginUserId;
//	}
//
//	public String getLoginPassword() {
//		return loginPassword;
//	}
//
//	public void setLoginPassword(String loginPassword) {
//		this.loginPassword = loginPassword;
//	}
//
//	@Override
//	public void setSession(Map<String, Object> session) {
//		this.session = session;
//	}
//
//}


package com.internousdev.template2.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.template2.dao.BuyItemDAO;
import com.internousdev.template2.dao.LoginDAO;
import com.internousdev.template2.dto.BuyItemDTO;
import com.internousdev.template2.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware{
	private String loginUserId;
	private String loginPassword;
	public Map<String, Object> session;
	private LoginDAO ldao = new LoginDAO();
	private LoginDTO ldto = new LoginDTO();
	private BuyItemDAO bidao = new BuyItemDAO();
	public List<BuyItemDTO> buyitemDTOList = new ArrayList<BuyItemDTO>();

	public String execute() {
		String result = ERROR;
		ldto = ldao.getLoginUserInfo(loginUserId, loginPassword);
		session.put("loginUser", ldto);
		buyitemDTOList = bidao.getBuyItemInfo();
		
		if(((LoginDTO)session.get("loginUser")).getLoginFlg()) {
			if	(((LoginDTO)session.get("loginUser")).getAdminFlg() != null) {
				result = "ADMIN";
				session.put("admin_flg", ldto.getAdminFlg());
				System.out.println(((LoginDTO)session.get("loginUser")).getAdminFlg());
			}else {
				result = SUCCESS;
//				BuyItemDTO bidto = (BuyItemDTO) bidao.getBuyItemInfo();

				session.put("login_user_id", ldto.getLoginId());
				
//				session.put("id", bidto.getId());
//				session.put("buyItem_name", bidto.getItemName());
//				session.put("buyItem_price", bidto.getItemPrice());
				if(buyitemDTOList.size() > 0) {
					if(buyitemDTOList.get(0) != null) {
						session.put("buyitemDTOList1", buyitemDTOList.get(0));
						System.out.println("buyitemDTOList1");
					}
					if(buyitemDTOList.get(1) != null) {
						session.put("buyitemDTOList2", buyitemDTOList.get(1));
						System.out.println("buyitemDTOList2");
					}
//					if(buyitemDTOList.get(2) != null){
//						session.put("buyitemDTOList3", buyitemDTOList.get(2));
//						System.out.println("buyitemDTOList3");
//					}

				}

				return result;
			}
			
		}
		return result;
	}

	public String getLoginUserId() {
		return loginUserId;
	}

	public void setLoginUserId(String loginUserId) {
		this.loginUserId = loginUserId;
	}

	public String getLoginPassword() {
		return loginPassword;
	}

	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}

