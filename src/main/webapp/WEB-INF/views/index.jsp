<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="./resources/css/index.css" rel="stylesheet">



</head>
<body>
	<c:import url="./template/header.jsp"></c:import>
	
	
	<!-- carousel 슬라이드 -->
	<div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
	    <div class="carousel-indicators">
	      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
	      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
	    </div>
	    
	    <div class="carousel-inner">
	      <div class="carousel-item active">
	      	<a href="/market/product/detail?no=216">
	      		<img alt="" src="./resources/img/img3.PNG" class="bd-placeholder-img" width="100%" height="50%">
	      	</a>
	      </div>
	      
	      
	      <div class="carousel-item">
			<a href="/market/product/detail?no=216">
	      		<img alt="" src="./resources/img/img4.PNG" class="bd-placeholder-img" width="100%" height="50%">
	      	</a>
	      </div>
	      
	      
	      <div class="carousel-item">
	        <a href="/market/product/detail?no=216">
	      		<img alt="" src="./resources/img/img5.PNG" class="bd-placeholder-img" width="100%" height="50%">
	      	</a>
	      </div>
	      
	      
	    </div>
	    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
	      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	      <span class="visually-hidden">Previous</span>
	    </button>
	    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
	      <span class="carousel-control-next-icon" aria-hidden="true"></span>
	      <span class="visually-hidden">Next</span>
	    </button>
  </div>
  <!-- carousel 슬라이드 끝-->
  
  <div class="recommend">
  	<p class="h2">추천 상품</p>
  </div>
  
  		
  
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>