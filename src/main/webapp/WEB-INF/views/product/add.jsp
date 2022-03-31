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
	<h1>add page</h1>
	
	<form action="./add" method = "post" enctype="multipart/form-data">
		<input hidden="" type="number" name="no">
		
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

		<div class="input-group mb-3">
			  <input type="file" class="form-control" id="inputGroupFile02" name="files">
			  <label class="input-group-text" for="inputGroupFile01">Upload</label>
		</div>
		<div class="input-group mb-3">
			  <input type="file" class="form-control" id="inputGroupFile02" name="files">
			  <label class="input-group-text" for="inputGroupFile01">Upload</label>
		</div>
		<div class="input-group mb-3">
			  <input type="file" class="form-control" id="inputGroupFile02" name="files">
			  <label class="input-group-text" for="inputGroupFile01">Upload</label>
		</div>
		
		<button type="submit">상품 등록</button>
	</form>

	<script src="../resources/js/add.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>