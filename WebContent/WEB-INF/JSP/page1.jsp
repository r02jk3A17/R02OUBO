<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="Z:\git\R02OUBO\WebContent\css\style.css" type="text/css">
<title>Insert title here</title>
</head>
<body>
<h1>仙台駅前第一デパート　セール抽選会　受付会場</h1>

<%
String Kigen = (String)request.getAttribute("Result");
%>
<%
int num = Integer.parseInt(Kigen);
%>
<% 
		if(num<=10){
%>
<p>応募期限まであと <%=Kigen %> 日</p>
<%
		}
%>

<form method="post" action="./page2">
応募者のメールアドレス<input type="email" name="email" placeholder="メールアドレスを入力" /><br/>
7桁の数字A<input type="number" name="numa" placeholder="7桁の数字A" /><br/>
7桁の数字B<input type="number" name="numb" placeholder="7桁の数字B" /><br/>
<input type="submit" value="登録する" />
</form>


</body>
</html>