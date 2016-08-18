<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><s:text name="loginPage"/></title>
</head>
<body>
<s:form action="x">
	<s:doubleselect label="请选择您喜欢的图书" name="author" list="{'李刚','David'}" doubleList="top == '李刚'?{'轻量级javaee实战','疯狂ios将以','疯狂java讲义'}:{'javaScript:the definitive guide'}"  doubleName="book"/>
</s:form>
<s:optiontransferselect  name="cnbook" leftTitle="中文图书：" rightTitle="外文图书：" list="{'a','b','c','d'}" multiple="true" addAllToLeftLabel="向左移动" selectAllLabel="全部选择" headerKey="cnKey" headerValue="-选择中文图书-" emptyOption="true"  doubleList="{'dd','ee'}" doubleName="enBook" doubleHeaderKey="enKey" doubleHeaderValue="-选择外文图书-" doubleEmptyOption="true" doubleMultiple="true"/>
</body>
</html>
