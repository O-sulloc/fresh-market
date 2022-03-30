<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>add page</h1>
	
	<form action="./add" method = "post" enctype="multipart/form-data">
		<div class="col-md-offset-3 col-md-6">
		  <label class="form-label">상품명</label>
		  <input type="text" name="proName">
		</div>

		<div class="col-md-offset-3 col-md-6">
		  <label class="form-label">가격</label>
		  <input type="number" name="price">
		</div>

		<div class="col-md-offset-3 col-md-6">
		  <label class="form-label">상품 설명</label>
		  <textarea name="contents" rows="" cols="" class="form-control"></textarea>
		</div>

		<div class="col-md-offset-3 col-md-6">
			<label class="form-label">카테고리</label>
			채소<input type="radio" name="category" value="1">
			수산<input type="radio" name="category" value="2">
			정육<input type="radio" name="category" value="3">
			
		</div>
		
		<button type="submit">상품 등록</button>
	</form>

	<script src="../resources/js/add.js"></script>
</body>
</html>