<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<script type="text/javascript" src="/js/main.js"></script>
</head>
<body class="bg_white2">
	<div class="grid bg_blue">
		<div class="container grid p2 col2">
			<div></div>
			<div class="flex col2 gap2">
				<a class="col_white1" href="/artist">Artists</a>
				<a class="col_white1" href="/song">Songs</a>
				<a class="col_white1" href="/login">Login</a>
				<a class="col_white1" href="/register">Register</a>
			</div>
		</div>
	</div>

	<div class="container p2 grid gap2">
		<form:form class="card" action="/register" method="POST" modelAttribute="user" >
			<div class="card_head">
				<h1 class="col_white1">Register</h1>
			</div>
			
			<div class="card_body">
				<form:errors class="col_red" path="email" />
				<form:input placeholder="Email" path="email" />
				
				<form:errors class="col_red" path="password" />
				<form:input placeholder="Password" path="password" />

				<form:errors class="col_red" path="confirm" />
				<form:input placeholder="Password Confirmation" path="confirm" />
				
				<input class="btn_submit" type="submit" value="Register" />
			</div>
		</form:form>
	</div>
</body>
</html>