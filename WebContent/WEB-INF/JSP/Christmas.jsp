<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>クリスマスセール</title>

<link rel="stylesheet" href="Z:\git\R02OUBO\WebContent\css\style.css" type="text/css">

</head>
<body>

<body id="diagonal-gradient" bgcolor="#b22222" text="#fafad2">

 

<body style="background-image:url(file:///Z:/git/R02OUBO/WebContent/WEB-INF/image/Christmas.jpg)">
<body style=".resizeimage width:100%;" >

<br>

<h1>仙台駅前第一デパート　クリスマスセール　受付会場</h1>

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
<br><br><br><br><br><br><br><br><br><br>

<form method="post" action="./page2">

 

<div style="text-align:center;">

 

<font size="5" color="#ffffff">応募者のメールアドレス</font>
<input type="email" name="email" placeholder="メールアドレスを入力" /><br/>
<br/>

 


<font size="5" color="#ffffff">7　桁　の　数　字　A</font>
<input type="number" name="numa" placeholder="7桁の数字A" /><br/>
<br/>

 

<font size="5" color="#ffffff">7　桁　の　数　字　B</font>
<input type="number" name="numb" placeholder="7桁の数字B" /><br/>
<br/><br/>

 

<input type="submit" value="登録する" style="width:100px;height:50px"/>
</div>

</form>

<p><a href="Valentine">バレンタインセール</a></p>
<p><a href="Nyugaku">新入学セール</a></p>

</body>
</html>