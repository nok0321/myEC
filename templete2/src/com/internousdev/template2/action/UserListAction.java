package com.internousdev.template2.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.template2.dao.UserListDAO;
import com.internousdev.template2.dto.UserListDTO;
import com.opensymphony.xwork2.ActionSupport;

public class UserListAction extends ActionSupport implements SessionAware{
	private List<UserListDTO> userListDTOList = new ArrayList<UserListDTO>();
	private Map<String,Object> session;

	public String execute() {
		String ret = ERROR;
		UserListDAO dao = new UserListDAO();
		userListDTOList = dao.select();

		if(userListDTOList.size() > 0) {
			session.put("userListDTOList", userListDTOList);
			ret = SUCCESS;
		}else {
			ret = ERROR;
		}
		return ret;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
