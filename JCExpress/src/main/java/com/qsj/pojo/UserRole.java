package com.qsj.pojo;

import java.io.Serializable;
import java.util.Date;

/**   
 * Copyright © 2018  The so-called success is to make extraordinary persistence in the ordinary.
 * 
 * @author qsjteam   
 * @date 2018-5-5
 */
public class UserRole implements Serializable {
	// @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么)
	private static final long serialVersionUID = 1L;
	private int user_role_id;
	private int role_id;
	private int user_id;
	private Date create_time;
	private String create_by;

	@Override
	public String toString() {
		return "UserRole [user_role_id=" + user_role_id + ", role_id=" + role_id + ", user_id=" + user_id
				+ ", create_time=" + create_time + ", create_by=" + create_by + "]";
	}

	public int getUser_role_id() {
		return user_role_id;
	}

	public void setUser_role_id(int user_role_id) {
		this.user_role_id = user_role_id;
	}

	public int getRole_id() {
		return role_id;
	}

	public void setRole_id(int role_id) {
		this.role_id = role_id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public Date getCreate_time() {
		return create_time;
	}

	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}

	public String getCreate_by() {
		return create_by;
	}

	public void setCreate_by(String create_by) {
		this.create_by = create_by;
	}

}
