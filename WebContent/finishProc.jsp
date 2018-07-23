<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
#front {border: 1px solid gray; width: 150px;display:table-cell; height: 40px; 
vertical-align:middle; background-color: gray; color: white; margin-bottom: 60px;}
#student { border: 1px solid gray; width: 80px; height:80px; display:inline-block;}
#nostudent {border : 0px; width:80px; height:80px; display:inline-block;}
#title { border: 1px solid gray; width: 160px; height:50px; display:inline-block; }
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<%
			String[] remove = request.getParameterValues("no");
			String number = request.getParameter("number");
			int num = Integer.parseInt(number);
			String d = request.getParameter("division");
			int division = Integer.parseInt(d);
			List res1 = new ArrayList();
			
			
			int random[] = new int[num];
			for (int i = 0; i < num; i++) {
				double randomValue = Math.random();
				random[i] = (int) (randomValue * num) + 1;
				for (int j = 0; j < i; j++) {
					if (random[i] == random[j])
						i--;
				}
			}
			
			for(int i=0;i<num;i++){
				res1.add(random[i]);
			}
			
			
			for (int i = 0; i < res1.size(); i++) {
				for (int j = 0; j < remove.length; j++) {
					if (res1.get(i).equals(Integer.parseInt(remove[j]))) {
						res1.remove(i);
					}
				}
			}

		%>
		<br><br>
		<div id="front">교탁</div>
		<div style="margin-top: 30px;"></div>
		<%
		int j=0;
			//자리표 출력
			division=division*2;
			for (int i = 0; i < res1.size(); i++) {
				j=j+1;
		%>
		<div id="student">
			<%
				out.println(res1.get(i));
			%>
		</div>
		<%
		
			if (j%2==0&&(i + 1) % division != 0){%>
				<div id="nostudent"></div>
			<%}
			if ((i + 1) % division == 0)
					out.println("<br><br>");
			}
			
		%>
	<center>	
		<p>인원수: <%=num %>명<br> <%if(remove[0]=="0") {} else{out.println("결원: "); for(int i=0; i<remove.length; i++) {out.println(remove[i]+"번 ");}}%></p>
	</center>
</body>
</html>