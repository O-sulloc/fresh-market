<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

	
</head>
<body>

<figure class="text-center">
  <blockquote class="blockquote">
    <p>${board}</p>
  </blockquote>
  <figcaption class="blockquote-footer">
    <cite title="Source Title">컬리의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요</cite>
  </figcaption>
</figure>

	<table class="table">
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">제목</th>
				<th scope="col">작성자</th>
				<th scope="col">작성일</th>
			</tr>
		</thead>
		<c:forEach items="${list}" var="dto">
			<tr>
				<td>${dto.num}</td>
				<td><a href="./detail?num=${dto.num}">${dto.title}</a></td>
				<td>${dto.id}</td>
				<td>${dto.regdate}</td>
			</tr>
		</c:forEach>
	</table>
	

	<a href="./add"><button type="button" class="btn btn-outline-secondary">글쓰기</button></a>

	<c:if test="${pager.pre}">
		<a href="./list?page=${pager.startNum-1}">PREVIEW</a>
	</c:if>

	<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
		<a href="./list?page=${i}">${i}</a>
	</c:forEach>

	<c:if test="${pager.next}">
		<a href="./list?page=${pager.lastNum+1}">NEXT</a>
	</c:if>

</body>
</html>