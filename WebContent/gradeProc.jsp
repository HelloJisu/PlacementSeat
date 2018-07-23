<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collections"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#progress {
	width: 1000px;
	display: inline-block;
}

#progress_ {
	height: 180px;
	float: left;
}
</style>
</head>
<body>
	<%
		class Choice implements Comparable<Choice> {
			int cnt;
			int rank = 1;
			String name;
			String color;

			Choice(int cnt, String name, String color) {
				this.cnt = cnt;
				this.name = name;
				this.color = color;
			}

			public int compareTo(Choice c) {

				if (this.cnt < c.cnt) {
					return 1;
				} else if (this.cnt > c.cnt) {
					return -1;
				} else {
					return 0;
				}

			}
		}

		ArrayList<Choice> cc = new ArrayList<Choice>();

		request.setCharacterEncoding("UTF-8");
		String type = request.getParameter("TYPE");

		String[] vote = new String[0];
		String[] color = {};

		String qType = "";

		switch (type) {
		case "ice":
			String[] icecream = { "매드 어바웃 초콜릿","뉴욕 치즈케이크","러브포션","레인보우샤베트",
					"미니미니 미니언즈","민트 초코","슈팅스타","스트로베리","아몬드 봉봉","엄마는 외계인",
					"요거트","월넛","이상한 나라의 솜사탕","자모카 아몬드 훠지","초콜릿","초콜릿 무스",
					"쿠앤크","파핑트로피카","피스타치오" };
			vote = icecream;
			qType = "img/최고의맛.png";
			break;
		}

		double sum = 0.0;

		try {
			for (int i = 0; i < vote.length; i++) {
				String filePath = application.getRealPath("/WEB-INF/hanja/" + vote[i] + ".txt");
				BufferedReader reader = new BufferedReader(new FileReader(filePath));

				String str = "";
				int cnt = 0;
				while (true) {
					str = reader.readLine();
					//str.replaceAcc(regex, replacement);
					if (str == null || str.equals(""))
						break;
					cnt = Integer.parseInt(str.trim());
				}
				cc.add(new Choice(cnt, vote[i], color[i]));
				sum += cnt;
				reader.close();
			}
		} catch (Exception e) {
			out.println(e.toString());
		}

		Collections.sort(cc);
	%><center>
		<img width="40%" src="<%=qType%>"><br>
		<br>
		<br>
		<br>
		<div id="progress" style="width:1500px">
			<%
				for (int i = 0; i < cc.size(); i++) {
					if (cc.get(i).cnt == 0)
						continue;
			%>
			<div id="progress_"
				style="width:<%=(int) (100 * (cc.get(i).cnt / sum))%>%;background-color:<%=cc.get(i).color%>;display:inline-block;vertical-align:middle;">
				<%for(int j=0;j<cc.get(i).cnt;j++){ %>
				<img src="img/icecream/<%=cc.get(i).name%>.png" width="50px" style="vertical-align:middle"><%}
					out.println("<br><span style='font-weight:bold'>" + cc.get(i).name + "</span> <br>" + cc.get(i).cnt + "표 / 총 "
								+ (int) sum + "표 <br>" + String.format("%.2f", 100 * (cc.get(i).cnt / sum))+"%");
				%></div>
			<%
				}
			%>
		</div>
	</center>
</body>
</html>