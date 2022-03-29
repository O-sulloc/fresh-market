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
	
	<h2>개인 정보 수정</h2>
	<h3>비밀번호 재확인</h3>
	<h6>회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인해주세요.</h6>
	
		<div>
			<form action="./loginCheck" method="post">
				<fieldset>
					<legend>id</legend>
					<input type="text" name="id" value="${member.id}" readonly>
				</fieldset>
				
				<fieldset>
					<legend>pw</legend>
					<input type="password" name="pw">
				</fieldset>
			
				<div class="d-grid gap-2 col-6 mx-auto">
				  <button class="btn btn-primary" type="submit">확인</button>
				</div>
			</form>
		</div>
		
	<c:import url="../template/footer.jsp"></c:import>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>