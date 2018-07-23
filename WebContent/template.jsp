<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String contentPage = request.getParameter("CONTENTPAGE");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Template 페이지 연습</title>
</head>
<style>
body{
      background-color:#c6e4f5;
}
</style>
<body>
<center>
<table border=0 width=1000 height=300 cellpadding=2 cellspacing=0>
<tr>
	<td>
		<jsp:include page="top.jsp" flush="false"/>
	</td>
</tr>

<tr>
	<td>
		<jsp:include page="menu.jsp" flush="false"/>
	</td>
</tr>

<tr>
	<td width=350 valign="top">
		<jsp:include page="<%=contentPage %>" flush="false"/>
	</td>
</tr>

<tr>
	<td>
		<jsp:include page="bottom.jsp" flush="false"/>
	</td>
</tr>
</table>
</center>

</body>
</html>