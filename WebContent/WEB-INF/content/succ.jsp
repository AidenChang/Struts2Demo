<?xml version="1.0" encoding="GBK" ?>
<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>�ϴ��ɹ�</title>
</head>
<body>
	�ϴ��ɹ���<br/>
	�ļ�����:<s:property value="+title"/></br>
	�ļ�Ϊ:<img src="<s:property value="'uploadFiles/'+uploadFileName"/>"/></br>
</body>
</html>