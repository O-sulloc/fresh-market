<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
	<h1>update page</h1>
	
	<form action="./update" method = "post" enctype="multipart/form-data">
		<!-- <div class="col-md-offset-3 col-md-6">
			<label class="form-label">상품번호</label>
			<input readonly="readonly" type="number" name="productNum" value="${dto.productNum}">
		</div> -->
		
		<input hidden="" type="number" name="productNum" value="${dto.productNum}">
		
		<div class="col-md-offset-3 col-md-6">
		  <label class="form-label">상품명</label>
		  <input type="text" name="productName" value="${dto.productName}">
		</div>

		<div class="col-md-offset-3 col-md-6">
		  <label class="form-label">가격</label>
		  <input type="number" name="productPrice" value="${dto.productPrice}">
		</div>

		<div class="col-md-offset-3 col-md-6">
		  <label class="form-label">상품 설명</label>
		  <textarea name="productDetail" rows="" cols="" class="form-control">${dto.productDetail}</textarea>
		</div>

		<div class="col-md-offset-3 col-md-6">
			<label class="form-label">카테고리</label>
			<c:if test="${dto.category eq 1}"> <!-- 나중ㅇㅔ 3항연산자로 써보기 -->
				채소<input type="radio" name="category" value="1" checked="checked">
				수산<input type="radio" name="category" value="2">
				정육<input type="radio" name="category" value="3">
			</c:if>
			<c:if test="${dto.category eq 2}">
				채소<input type="radio" name="category" value="1">
				수산<input type="radio" name="category" value="2"  checked="checked">
				정육<input type="radio" name="category" value="3">
			</c:if>
			<c:if test="${dto.category eq 3}">
				채소<input type="radio" name="category" value="1">
				수산<input type="radio" name="category" value="2">
				정육<input type="radio" name="category" value="3" checked="checked">
			</c:if>
			
		</div>
		
		<div id="files">
		<c:forEach items="${dto.fileDTOs}" var="f">
			<div>
				${f.oriName} <button type="button" data-fileNum="${f.fileNum}" class="fileDeleteBtn">X</button>
			</div>
		</c:forEach>
		</div>
		
		<div id="fileResult"></div>
		
		<div>
			<button type="button" id="fileAdd">파일추가</button>
			
		</div>
		
		<button type="submit">상품 수정</button>
	</form>

	<script src="../resources/js/file.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>