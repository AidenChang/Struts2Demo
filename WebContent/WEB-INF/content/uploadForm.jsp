<%@ page language="java" contentType="text/html; charset=GBK"
    %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>简单文件上传</title>
</head>
<body>
<s:form action="upload" enctype="multipart/form-data">
	<s:textfield name="title" label="文件标题"></s:textfield>
	<s:file name="upload" label="选择文件"/>
	<s:submit value="上传"></s:submit>
</s:form>
</body>
</html>