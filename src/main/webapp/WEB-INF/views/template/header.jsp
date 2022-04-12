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
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
		  <a class="navbar-brand" href="/market/">MARKET</a>
		  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					  Product
					</a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="/market/product/list">전체보기</a></li>
						<li><a class="dropdown-item" href="/market/product/list?category=1">채소</a></li>
					  	<li><a class="dropdown-item" href="/market/product/list?category=2">수산</a></li>
					  	<li><a class="dropdown-item" href="/market/product/list?category=3">정육</a></li>
					</ul>
				</li>

				<li class="nav-item">
						<a class="nav-link" href="/market/notice/list">Notice</a>
				</li>
				<li class="nav-item">
						<a class="nav-link" href="/market/qna/list">Qna</a>
				</li>

				<c:if test="${empty member}">
					<li class="nav-item">
						<a class="nav-link" href="/market/member/join">회원가입</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/market/member/login">로그인</a>
			  		</li>
				</c:if>

				<c:if test="${not empty member}">
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
						  마이 페이지
						</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						  <li><a class="dropdown-item" href="">주문내역</a></li>
						  <li><a class="dropdown-item" href="/market/cart/list">장바구니</a></li>
						  <li><a class="dropdown-item" href="/market/member/loginCheck">개인 정보 수정</a></li>
						</ul>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/market/member/logout">로그아웃</a>
			  		</li>
				</c:if>

			</ul>
			<form action="/market/product/list" method="get" class="d-flex">
				<select name="keyword" hidden="">
					<option value="proName" hidden="" />
				</select>
			  <input class="form-control me-2" value="${pager.search}" type="search" placeholder="Search" aria-label="Search" name="search">
			  <button class="btn btn-outline-success" type="submit">Search</button>
			</form>
		  </div>
		</div>
	  </nav>

	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>