<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="finish.jsp" >
	
		<center>
			<img src="img/결원.png" width="600px"> <br>
			<%
				request.setCharacterEncoding("UTF-8");
				String number = request.getParameter("number");
				String d = request.getParameter("division");
				int num = Integer.parseInt(number);
				int i = 0;
				int[] student = new int[num];
				for (i = 1; i <= num; i++) {
					student[i - 1] = i;
			%>
			<input type="checkbox" name="no" value="<%=i%>"><%=i%><br>
			<%
				}
			%>
			<%for(i=0;i<num;i++){ %>
			<input type="hidden" name="test" value=<%= student[i] %> />
			<%} %>
			<input type="checkbox" name="no" value="0"">없음<br> 
			<input type="submit" value="결원학생체크">
			<input type="hidden" name="number" value=<%=number %> />
			<input type="hidden" name="division" value=<%=d %> />
		</center>
	</form>
</body>
</html>