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
<s:form action="login">
	<s:textfield name="username" key="user"/>
	<s:textfield name="password" key="pass"/>
	<s:submit key="login"/>
</s:form>

<table border="1" width="300">
<s:iterator value="{'abc','bcd','cde'}" id="name" status="st">
	<tr <s:if test="#st.odd">
		style="background-color:#bbbbbb"</s:if>>
		<td><s:property value="name"/></td>
	</tr>
</s:iterator>
</table>
<table border="1" width="350">
	<tr>
		<td>书名</td>
		<td>作者</td>
	</tr>
	<s:iterator value="#{'abc':'cc','bcd':'dd','cde':'ee'}" id="score" status="st">
	<tr <s:if test="#st.odd">
	style="background-color:#bbbbbb"</s:if>>
	<td><s:property value="key"/></td>
	<td><s:property value="value"/></td>
	</tr>
	</s:iterator>
	
</table>
<s:form>
<s:select list="#{'疯狂java将以':'离岗','轻量级javaee':'李刚','疯狂ios讲义':'李刚'} " label="选择您喜欢的图书" name="book" size="7" listKey="value" listValue="key">
<s:optgroup label="red johnson" list="#{'aaaaaa':'johnson'} " listKey="value" listValue="key"></s:optgroup>
<s:optgroup label="cs" list="#{'bbbbb':'cs'} " listKey="value" listValue="key"></s:optgroup>
</s:select>
</s:form>

<s:form action="login">
<s:textarea name="username"/>
<s:textarea name="password"/>
<s:submit/>
</s:form>
</body>
</html>
