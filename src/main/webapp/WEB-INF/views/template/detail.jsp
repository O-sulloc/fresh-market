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

		<div class="">
			<hr>
			<ul class="tabs" data-tabs id="example-tabs">
				<li class="tabs-title is-active"><a href="#panel1"
					aria-selected="true">Reviews</a></li>
				<li class="tabs-title"><a href="#panel2">Similar Products</a></li>
			</ul>
			<div class="tabs-content" data-tabs-content="example-tabs">
				<div class="tabs-panel is-active" id="panel1">
					<h4>Reviews</h4>
					<div class="media-object stack-for-small">
						<div class="media-object-section">
							<img class="thumbnail" src="https://placehold.it/200x200">
						</div>
						<div class="media-object-section">
							<h5>Mike Stevenson</h5>
							<p>I'm going to improvise. Listen, there's something you
								should know about me... about inception. An idea is like a
								virus, resilient, highly contagious. The smallest seed of an
								idea can grow. It can grow to define or destroy you</p>
						</div>
					</div>
					<label> My Review <textarea placeholder="None"></textarea>
					</label>
					<button class="button">Submit Review</button>
				</div>
				<div class="tabs-panel" id="panel2">
					<div class="grid-x grid-margin-x medium-up-3 large-up-5">
						<div class="cell">
							<img class="thumbnail" src="https://placehold.it/350x200">
							<h5>
								Other Product <small>$22</small>
							</h5>
							<p>In condimentum facilisis porta. Sed nec diam eu diam
								mattis viverra. Nulla fringilla, orci ac euismod semper, magna
								diam.</p>
							<a href="#" class="button hollow tiny expanded">Buy Now</a>
						</div>
						
					</div>
				</div>
			</div>
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