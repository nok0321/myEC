//package com.internousdev.template2.action;
//
//
//import java.util.Map;
//
//import org.apache.struts2.interceptor.SessionAware;
//
//import com.opensymphony.xwork2.ActionSupport;
//
//public class BuyItemAction extends ActionSupport implements SessionAware{
//	private int count;
//	private String pay;
//	private Map<String, Object> session;
//
//
//
//	public String execute() {
//		String result = SUCCESS;
//
//		session.put("count", count);
//		int intCount = Integer.parseInt(session.get("count").toString());
//		int intPrice = Integer.parseInt(session.get("buyItem_price").toString());
//		session.put("buyItem_price", intCount * intPrice);
//		String payment;
//		
//
//		if(pay.equals("1")) {
//			payment = "現金払い";
//			session.put("pay", payment);
//		}else {
//			payment = "クレジットカード";
//			session.put("pay", payment);
//		}
//		return result;
//		
//	}
//
//	public int getCount() {
//		return count;
//	}
//
//	public void setCount(int count) {
//		this.count = count;
//	}
//
//	public String getPay() {
//		return pay;
//	}
//
//	public void setPay(String pay) {
//		this.pay = pay;
//	}
//
//	public Map<String, Object> getSession() {
//		return session;
//	}
//
//	public void setSession(Map<String, Object> session) {
//		this.session = session;
//	}
//
//}

package com.internousdev.template2.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.template2.dao.BuyItemDAO;
import com.internousdev.template2.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemAction extends ActionSupport implements SessionAware {
	private List<BuyItemDTO> buyitemDTOList = new ArrayList<BuyItemDTO>();
	private List<BuyItemDTO> buyitemInfoList = new ArrayList<BuyItemDTO>();
	private Map<String, Object> session;
	private int count;
	private String pay;
	private String buyItemListFlg;


	@SuppressWarnings("unchecked")
	public String execute() throws SQLException {
		String ret = ERROR;

		System.out.println(session.get("buyitemDTOList1"));

		if (buyItemListFlg.equals("1")) {
			System.out.println(buyItemListFlg);
			buyitemInfoList = (ArrayList<BuyItemDTO>) session.get("buyitemDTOList1");
			System.out.println(buyitemInfoList);
			for (BuyItemDTO biList : buyitemInfoList) {
				System.out.println(biList);
			}
		}

		BuyItemDAO dao = new BuyItemDAO();
		//
		// dao.buyItemInfo(
		// session.get("id").toString(),
		// session.get("itemname").toString(),
		// session.get("itemprice").toString(),
		// session.get("count").toString());

		buyitemDTOList = dao.getBuyItemInfo();
		if (buyitemDTOList.size() > 0) {
			if (buyItemListFlg.equals("1")) {
				session.put("buyItemDTOList1", buyitemDTOList.get(0));
				// System.out.println("buyItemDTOList1");
			} else if (buyItemListFlg.equals("2")) {
				session.put("buyItemDTOList2", buyitemDTOList.get(1));
				// System.out.println("buyItemDTOList2");
			} else if (buyItemListFlg.equals("3")) {
				session.put("buyItemDTOList3", buyitemDTOList.get(2));
				// System.out.println("buyItemDTOList3");
			} else {
				System.out.println(false);
			}
			session.put("buyItemListFlg", buyItemListFlg);

			ret = SUCCESS;
		}

		session.put("count", count);
		// int intCount = Integer.parseInt(session.get("count").toString());
		// int intPrice =
		// Integer.parseInt(session.get("buyItem_price").toString());
		// session.put("total_price", intCount * intPrice);
		// String payment;

		// if(pay.equals("1")) {
		// payment = "現金払い";
		// session.put("pay", payment);
		// System.out.println(payment);
		// }else {
		// payment = "クレジットカード";
		// session.put("pay", payment);
		// System.out.println(payment);
		// }

		return ret;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getPay() {
		return pay;
	}

	public void setPay(String pay) {
		this.pay = pay;
	}

	public String getBuyItemListFlg() {
		return buyItemListFlg;
	}

	public void setBuyItemListFlg(String buyItemListFlg) {
		this.buyItemListFlg = buyItemListFlg;
	}

}
