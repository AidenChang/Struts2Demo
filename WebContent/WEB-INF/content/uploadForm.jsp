<%@ page language="java" contentType="text/html; charset=GBK"
    %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>���ļ��ϴ�</title>
</head>
<body>
<s:form action="upload" enctype="multipart/form-data">
	<s:textfield name="title" label="�ļ�����"></s:textfield>
	<s:file name="upload" label="ѡ���ļ�"/>
	<s:submit value="�ϴ�"></s:submit>
</s:form>
</body>
</html>