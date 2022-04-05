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
<!--수량-->
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>

<body>
	<a href="./delete?no=${dto.no}">delete</a>
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
				<h3>${dto.proName}</h3>
				<p>${dto.contents}</p>
				<input readonly value="${dto.price}" name="price">원
				

				<div class="input-group input-number-group">
					<label for="middle-label" class="middle">수량</label>
					<div class="input-group-button">
						<span class="input-number-decrement">-</span>
					</div>
					<input class="input-number" type="number" readonly value="1" name="amount">
					<div class="input-group-button">
						<span class="input-number-increment">+</span>
					</div>
				</div>

				<h3>총 상품 금액: <input type="number" name="sum" readonly value="${dto.price}"> 원</h3>
				<a href="#" class="button large expanded">Buy Now</a>
				
			</div>
		</div>

		<hr>
		<div>
			<c:forEach items="${dto.fileDTOs}" var="f">
				<img alt="" src="../resources/upload/product/${f.fileName}">
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


	</article>


	<script src="../resources/js/detail.js"></script>
	<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/js/foundation.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/motion-ui/1.2.3/motion-ui.min.js"></script>
	<script>
		$(document).foundation();
	</script>
</body>
</html>