<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<h1>장바구니</h1>
	
	<form action="./update" method="post" enctype="application/x-www-form-urlencoded">
	<h4> 배송받을 주소: ${list[0].address}</h4>
	
	
	<c:set var = "sum" value = "0" />
	<c:forEach items="${list}" var="i">
		<input type="text" id="id" name="id" value="${i.id}" readonly="readonly">
		<input type="number" id="cartNum" name="cartNum" value="${i.cartNum}" readonly="readonly">
		<table border="1">
			<tr>
				<td>상품명</td>
				<td>수량</td>
				<td>수정</td>
				<td>가격</td>
				<td>삭제</td>
			</tr>
			<tr>
				<td>${i.productName}</td>
				<td><input type="number" name="count" id="count" value="${i.count}"></td>
				<td><button type="submit" id="updateBtn">수정</button></td>
				<td>${i.totalPrice }</td>
				<td><a href="./delete?no=${i.productNum}">X</a></td>
			</tr>
		</table>
		<input type="number" id="productNum" name="productNum" value="${i.productNum}" hidden>
	<c:set var="sum" value="${sum + i.totalPrice}"/>
	</c:forEach>
	</form>
	<div>결제하실 금액:</div>
	<c:out value="${sum}"></c:out>

	<script src="../resources/js/cartUpdate.js"></script>
</body>
</html>