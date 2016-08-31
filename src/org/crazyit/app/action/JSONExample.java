package org.crazyit.app.action;

import java.util.*;

import org.apache.struts2.json.annotations.JSON;

import com.opensymphony.xwork2.Action;

public class JSONExample {
	private int[] ints = {10,20};
	private Map<String,String> map = new HashMap<String,String>();
	private String customName = "¹Ë¿Í";
	private String field1;
	private transient String field2;
	private String field3 ;
	
	public String execute(){
		map.put("name", "·è¿ñjava½²Òå");
		field3 = "aaa";
		return Action.SUCCESS;
	}

	public String getCustomName() {
		return customName;
	}

	public void setCustomName(String customName) {
		this.customName = customName;
	}

	public String getField1() {
		return field1;
	}

	public void setField1(String field1) {
		this.field1 = field1;
	}

	public String getField2() {
		return field2;
	}

	public void setField2(String field2) {
		this.field2 = field2;
	}

	public String getField3() {
		return field3;
	}

	public void setField3(String field3) {
		this.field3 = field3;
	}
	@JSON(name="newName")
	public Map getMap() {
		return this.map;
	}
	
}
