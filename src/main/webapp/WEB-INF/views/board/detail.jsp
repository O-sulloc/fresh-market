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
    <p>상세정보</p>
  </blockquote>
  <figcaption class="blockquote-footer">
    <cite title="Source Title">컬리의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요</cite>
  </figcaption>
</figure>

	<td>${dto.contents}</td>

<div>
	<a href="./delete?num=${dto.num}"><button type="button" class="btn btn-outline-danger">삭제</button></a>
	<a href="./update?num=${dto.num}"><button type="button" class="btn btn-outline-success">수정</button></a>
	<a href="./list"><button type="button" class="btn btn-outline-dark">목록</button></a>
</div>

	<hr>

	<div>
		<input type="hidden" name="num" value="${dto.num}" id="num">
		아이디 : <input type="text" readonly="readonly" name="id" value="${member.id}" id="id">
		내용 : <textarea rows="" cols="50" name="contents" id="contents"></textarea>
		
		<button type="button" id="reply" class="btn btn-outline-warning">댓글추가</button>
	</div>
<hr>

	<table id="replyResult">
	</table>
	
	
	<script src="../resources/js/qnaReply.js"></script>
	
</body>
</html>