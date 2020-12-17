<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>管理者用当選番号登録画面</h1>

<form method="post" action="./pageAD4">
7桁の数字A<input type="number" name="numa" placeholder="7桁の数字A" /><br/>
7桁の数字B<input type="number" name="numb" placeholder="7桁の数字B" /><br/>
当選賞品<input type="text" name="syouhin" placeholder="x等　xxxxxxx" /><br/>
<input type="submit" value="登録する" />
</form>


</body>
</html>