package com.bookforest.manager.bean;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class Rotation {
	private Integer imgId;
	
	private String imgName;
	
	private String imgUrl;
	
	private String imgRemark;
	
	private Integer order;
	
	private String operatorId;
	
	private String operatorTime;
	
	private Integer imgState;
	
	private String operator;

	public Integer getImgId() {
		return imgId;
	}

	public void setImgId(Integer imgId) {
		this.imgId = imgId;
	}

	public String getImgName() {
		return imgName;
	}

	public void setImgName(String imgName) {
		this.imgName = imgName;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getImgRemark() {
		return imgRemark;
	}

	public void setImgRemark(String imgRemark) {
		this.imgRemark = imgRemark;
	}

	public Integer getOrder() {
		return order;
	}

	public void setOrder(Integer order) {
		this.order = order;
	}

	public String getOperatorId() {
		return operatorId;
	}

	public void setOperatorId(String operatorId) {
		this.operatorId = operatorId;
	}

	public String getOperatorTime() {
		return operatorTime;
	}

	public void setOperatorTime(String operatorTime) {
		this.operatorTime = operatorTime;
	}

	public String getOperator() {
		return operator;
	}

	public void setOperator(String operator) {
		this.operator = operator;
	}

	public Integer getImgState() {
		return imgState;
	}

	public void setImgState(Integer imgState) {
		this.imgState = imgState;
	}

	public  Map<String,Object> toMap()
	{
		Map<String,Object> map =new HashMap<String, Object>();
		map.put("imgId",imgId );
		map.put("imgName", imgName);
		map.put("imgUrl", imgUrl);
		map.put("imgRemark", imgRemark);
		map.put("order",order);
		map.put("operatorId", operatorId);
		map.put("operatorTime", operatorTime);
		map.put("state", imgState);
		
		return map;
	}
}
