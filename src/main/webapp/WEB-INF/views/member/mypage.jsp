<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<h3>${dto.id}님의 mypage</h3>
	
		<div class="list-group">
		  <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
		    마이컬리
		  </a>
		  <a href="#" class="list-group-item list-group-item-action">주문 내역</a>
		  <a href="#" class="list-group-item list-group-item-action">상품 후기</a>
		  <a href="#" class="list-group-item list-group-item-action">상품 문의</a>
		  <a href="./loginCheck" class="list-group-item list-group-item-action">개인 정보 수정</a>
		</div>
		
	<c:import url="../template/footer.jsp"></c:import>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>