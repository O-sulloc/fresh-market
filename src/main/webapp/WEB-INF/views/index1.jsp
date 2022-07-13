<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	      	<a href="/market/product/detail?no=294">
	      		<img alt="" src="./resources/img/banner_1.png" class="bd-placeholder-img" width="100%" height="50%">
	      	</a>
	      </div>
	      
	      
	      <div class="carousel-item">
			<a href="/market/notice/detail?num=1">
	      		<img alt="" src="./resources/img/banner_2.png" class="bd-placeholder-img" width="100%" height="50%">
	      	</a>
	      </div>
	      
	      
	      <div class="carousel-item">
	        <a href="/market/notice/detail?num=21">
	      		<img alt="" src="./resources/img/banner_3.png" class="bd-placeholder-img" width="100%" height="50%">
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
  <div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-3">
        
		<img alt="" src="./resources/img/img8.PNG" class="bd-placeholder-img" width="140" height="140">
        <h2>망고</h2>
        <p>맛있어요</p>
        <p><a class="btn btn-secondary" href="/market/product/detail?no=297">상품 보러가기 &raquo;</a></p>
        
      </div>
      
      <!-- /.col-lg-4 -->
      <div class="col-lg-3">
        <img alt="" src="./resources/img/img7.png" class="bd-placeholder-img" width="140" height="140">

        <h2>딸기</h2>
        <p>싸다</p>
        <p><a class="btn btn-secondary" href="/market/product/detail?no=298">상품 보러가기 &raquo;</a></p>
      </div>
      
      <!-- /.col-lg-4 -->
      <div class="col-lg-3">
        <img alt="" src="./resources/img/img9.PNG" class="bd-placeholder-img" width="140" height="140">
        <h2>수박</h2>
        <p>여름</p>
        <p><a class="btn btn-secondary" href="/market/product/detail?no=299">상품 보러가기 &raquo;</a></p>
      </div>
      
      <!-- /.col-lg-4 -->
      <div class="col-lg-3">
        <img alt="" src="./resources/img/img10.PNG" class="bd-placeholder-img" width="140" height="140">
        <h2>메론</h2>
        <p>제철</p>
        <p><a class="btn btn-secondary" href="/market/product/detail?no=300">상품 보러가기 &raquo;</a></p>
      </div>
      <!-- /.col-lg-4 -->
    </div><!-- /.row -->
  	</div>	
  	
  	<div>
  		
  	</div>
  

	<c:import url="./template/footer.jsp"></c:import>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>