<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>今日は何の日クイズ</title>
</head>
<body>
<h1>今日は何の日クイズ -食べ物編-</h1>
<h2>第ｎ問</h2>
<q>問題文</q>
<form action ="answer.html" method ="post">
    選択肢：
    <input type="radio" name="answer" value ="選択肢1">選択肢１
    <input type="radio" name="answer" value ="選択肢2">選択肢２
    <input type="radio" name="answer" value ="選択肢3">選択肢３<br>
    <input type="submit" value="OK!">
</form>
</body>
</html>