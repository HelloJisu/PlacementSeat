<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
select {
	width: 200px; /* ���ϴ� �ʺ��� */
	padding: .8em .5em; /* �������� ���� ���� */
	font-family: inherit; /* ��Ʈ ��� */
	background:
		url(img/arrow.png)
		no-repeat 95% 50%; /* ����Ƽ�� ȭ��ǥ ��ü */
	border: 1px solid #999;
	border-radius: 0px; /* iOS �ձٸ𼭸� ���� */
	-webkit-appearance: none; /* ����Ƽ�� ���� ���߱� */
	-moz-appearance: none;
	appearance: none;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="number.jsp">
	<center>
		<img src="img/�ο�.png" width="500px"><br> 
		<select	name="number">
			<option value="" selected disabled hidden>�����ϼ���</option>
			<option value="20">20</option>
			<option value="21">21</option>
			<option value="22">22</option>
			<option value="23">23</option>
			<option value="24">24</option>
			<option value="25">25</option>
			<option value="26">26</option>
			<option value="27">27</option>
			<option value="28">28</option>
			<option value="29">29</option>
			<option value="30">30</option>
			<option value="31">31</option>
			<option value="32">32</option>
			<option value="33">33</option>
			<option value="34">34</option>
			<option value="35">35</option>
			<option value="36">36</option>
			<option value="37">37</option>
			<option value="38">38</option>
			<option value="39">39</option>
			<option value="40">40</option>
		</select><br><br>
		<input type="submit" value="�ڸ����ϱ�">
		<input type="hidden" name="division" value="2">
	</center>
	<script>
	</script>
	</form>
</body>
</html>