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
	<h1>로그인</h1>
	
	<div>
		<form action="./login" method="post">
			<fieldset>
				<legend>id</legend>
				<input type="text" name="id">
			</fieldset>
			
			<fieldset>
				<legend>pw</legend>
				<input type="password" name="pw">
			</fieldset>

			<h6><a></a></h6>
		
			<div class="d-grid gap-2 col-6 mx-auto">
			  <button class="btn btn-primary" type="submit">로그인</button>
			  <button class="btn btn-outline-primary" type="button">회원가입</button>
			</div>
		</form>
	</div>
	
	<c:import url="../template/footer.jsp"></c:import>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>