<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="../resources/css/join.css" rel="stylesheet">
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	
	<h1>회원가입</h1>
	
	<div class="join-box">
		<form action="./join" method="post" id="frm">
			<fieldset>
				ID <input id="id" type="text" name="id">
				<div id="idResult"></div>
			</fieldset>
			
			<fieldset>
				PW <input id="pw" type="password" name="pw" placeholder="8~16자에 해당하는 비밀번호를 입력해주세요.">
				<div id="pwResult"></div>
			</fieldset>

			<fieldset>
				PW 재확인 <input id="pw2" type="password" name="pw2" placeholder="입력하신 비밀번호와 동일한 비밀번호를 입력해주세요.">
				<div id="pwResult2"></div>
			</fieldset>
			
			<fieldset>
				Name <input id="name" type="text" name="name">
				<div id="nameResult"></div>
			</fieldset>
			
			<fieldset>
				Email <input id="email" type="email" name="email">
				<div id="emailResult"></div>
			</fieldset>
			
			<fieldset>
				Address <input id="address" type="text" name="address" readonly>
				<div id="addressResult"></div>
			</fieldset>
			
			<script>
				window.onload=function(){
					document.getElementById("address").addEventListener("click", function(){
						new daum.Postcode({
							oncomplete: function(data) {
								// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
								// 예제를 참고하여 다양한 활용법을 확인해 보세요.
								document.getElementById("address").value=data.address;
							}
						}).open();						
					})
				}
			</script>

			<div class="list-group">
				<label class="list-group-item">
				  <input class="form-check-input" type="checkbox" id="checkAll" value="">
				  전체동의
				</label>
				<label class="list-group-item">
				  <input class="form-check-input me-1" type="checkbox" value="">
				  이용 약관 동의 (필수)
				  <div class="termsText">
					"제1조(목적)"
					<br>
					"이 약관은"
				  </div>
				</label>
				<label class="list-group-item">
				  <input class="form-check-input me-1" type="checkbox" value="">
				  개인정보의 제공 및 위탁 (필수)
				</label>
				<label class="list-group-item">
				  <input class="form-check-input me-1" type="checkbox" value="">
				  개인정보 처리방침 (필수)
				</label>
			  </div>

			<fieldset>
				<button type="button" class="btn btn-primary" id="btn">가입하기</button>
			</fieldset>
		</form>
	</div>
	
	<c:import url="../template/footer.jsp"></c:import>

	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="../resources/js/join.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>