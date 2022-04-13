<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html class="no-js">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/motion-ui/1.2.3/motion-ui.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation-prototype.min.css">
<link
	href='https://cdnjs.cloudflare.com/ajax/libs/foundicons/3.0.0/foundation-icons.css'
	rel='stylesheet' type='text/css'>
<!-- optional CDN for Foundation Icons ^^ -->
<link href="../resources/css/detail.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>

<body>
	
	<form action="../cart/add" method="post" id="frm">
	<br>
	<article class="grid-container">
		<div class="grid-x grid-margin-x">
			<div class="medium-6 cell">
				<!-- img tag -->
				<c:forEach items="${dto.fileDTOs}" var="f" begin="0" end="0">
					<img class="thumbnail"
						src="../resources/upload/product/${f.fileName}">
				</c:forEach>
			</div>

			<div class="medium-6 large-5 cell large-offset-1">
				<h3>상품명: ${dto.proName}</h3>
				<p>${dto.contents}</p>
				<input readonly value="${dto.price}" name="price">원
				
				<select name="count" size="">
					<c:forEach begin="1" end="10" var="i">
						<option value="${i}">${i}</option>
					</c:forEach>
				</select>
				<input type="hidden" name="no" value="${dto.no}">
				<input type="hidden" name="id" value="${member.id}">
				<button type="submit" class="btn btn-primary" id="btn">장바구니 담기</button>
				
			</div>
		</div>

		<hr>
		<div>
			<c:forEach items="${dto.fileDTOs}" var="f">
				<div class="pic">
					<img alt="" src="../resources/upload/product/${f.fileName}">
				</div>
			</c:forEach>
		</div>

	<a href="./delete?no=${dto.no}">delete</a>

	</article>
	</form>

	
	
	<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/js/foundation.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/motion-ui/1.2.3/motion-ui.min.js"></script>
	<script>
		$(document).foundation();
	</script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	
</body>
</html>