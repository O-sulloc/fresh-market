<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge" />
	<title>Market</title>
	<meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" type="image/x-icon" href="../resources/assets/images/favicon.svg" />
    
    <!-- ========================= CSS here ========================= -->
    <link rel="stylesheet" href="../resources/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../resources/assets/css/LineIcons.3.0.css" />
    <link rel="stylesheet" href="../resources/assets/css/tiny-slider.css" />
    <link rel="stylesheet" href="../resources/assets/css/glightbox.min.css" />
    <link rel="stylesheet" href="../resources/assets/css/main.css" />
</head>
<body>
	<c:import url="../tmp/header.jsp"></c:import>
	
	<!-- Start Breadcrumbs -->
    <div class="breadcrumbs">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">장바구니</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/market/"><i class="lni lni-home"></i> 홈</a></li>
                        <li><a href="/market/product/list"><i class="lni"></i>상품</a></li>
                        <li>장바구니</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End Breadcrumbs -->
    
    <!-- Start Shopping Cart List -->
    <div class="shopping-cart section">
    	<div class="container">
    		<div class="row">
	            <div class="cart-list-head col-lg-8" style="padding: 0px">
	                <!-- Cart List Title -->
	                <div class="cart-list-title">
	                    <div class="row">
	                        <div class="col-lg-2 col-md-1 col-12">
								<!-- 썸네일 -->
	                        </div>
	                        <div class="col-lg-3 col-md-3 col-12">
	                            <p>상품명</p>
	                        </div>
	                        <div class="col-lg-2 col-md-1 col-12">
	                            <p>수량</p>
	                        </div>
	                        <div class="col-lg-2 col-md-1 col-12">
	                            <p></p>
	                        </div>
	                        <div class="col-lg-2 col-md-2 col-12">
	                            <p>합계</p>
	                        </div>
	                        <div class="col-lg-1 col-md-2 col-12">
	                            <p>삭제</p>
	                        </div>
	                    </div>
	                </div>
	                <!-- End Cart List Title -->
	                
	                <!-- 장바구니 상품 forEach로 출력 -->
	                <form action="./update" method="post" enctype="application/x-www-form-urlencoded" id="form">
	                <c:set var = "sum" value = "0" />
	                <c:forEach items="${list}" var="i">
	                    <input type="text" id="id" name="id" value="${i.id}" readonly="readonly" hidden="">
						<input type="number" id="cartNum" name="cartNum" value="${i.cartNum}" readonly="readonly" hidden="">
						<input type="number" id="productNum" name="productNum" value="${i.productNum}" readonly="readonly" hidden="">
		                <div class="cart-single-list">
		                    <div class="row align-items-center">
		                        <div class="col-lg-2 col-md-1 col-12">
		                            <a href="/market/product/detail?productNum=${i.productNum}">
		                            	<img src="https://via.placeholder.com/220x200" alt="#"></a>
		                        </div>
		                        <div class="col-lg-3 col-md-3 col-12">
		                            <h5 class="product-name"><a href="/market/product/detail?productNum=${i.productNum}">
		                                    ${i.productName}</a>
		                            </h5>
		                        </div>
		                        <div class="col-lg-2 col-md-1 col-12">
		                            <div class="count-input">
		                                <input type="number" name="count" id="count" value="${i.count}" style="inline-size: -webkit-fill-available">
		                            </div>
		                        </div>
		                        <div class="col-lg-2 col-md-1 col-12">
		                            <button type="submit" id="updateCount">수정</button>
		                        </div>
		                        <div class="col-lg-2 col-md-2 col-12">
		                            <p><fmt:formatNumber>${i.totalPrice}</fmt:formatNumber>원</p>
		                        </div>
		                        <div class="col-lg-1 col-md-2 col-12">
		                            <a href="./delete?cartNum=${i.cartNum}" class="remove-item">
		                            	<i class="lni lni-close"></i></a>
		                        </div>
		                    </div>
		                </div>
		            <c:set var="sum" value="${sum + i.totalPrice}"/>
	                </c:forEach>
	                </form>
	                <!-- End Single List list -->
				</div>
				
				<!-- total -->
				<div class="total-amount col-lg-4">
			    	<div class="right" style="margin-top: 0">
				        <ul>
					        <li>배송지<span>${list[0].address}</span></li>
					        <li>상품 금액<span>
					        		<fmt:formatNumber>
					        			<c:out value="${sum}"></c:out>
					        		</fmt:formatNumber>
					        	원</span>
					       	</li>
					        <li>배송비
						        <span>
						        	<c:choose>
						        		<c:when test="${sum < 50000}">+3,000 원</c:when>
						        		<c:when test="${sum >= 50000}">무배!</c:when>
						        	</c:choose>
					        	</span>
					        </li>
					        <li class="last">결제하실 금액
					        	<span>
					        		<c:choose>
						        		<c:when test="${sum < 50000}">
						        			<fmt:formatNumber>
							        			<c:out value="${sum+3000}"></c:out>
							        		</fmt:formatNumber>
						        		</c:when>
						        		
						        		<c:when test="${sum >= 50000}">
						        			<fmt:formatNumber>
							        			<c:out value="${sum}"></c:out>
							        		</fmt:formatNumber>
						        		</c:when>
						        	</c:choose>
					        	원</span>
					       	</li>
				        </ul>
				        <div class="button">
					        <a href="checkout.html" class="btn">주문하기</a>
				        </div>
			        </div>                    
			    </div>
			    <!-- total amount 끝 -->
		    </div>
		</div>
    </div>
    <!-- End Shopping Cart List -->
    
    
    
    <!-- start footer -->
	<c:import url="../tmp/footer.jsp"></c:import>
	<!-- end footer -->

    <!-- ========================= scroll-top ========================= -->
    <a href="#" class="scroll-top">
        <i class="lni lni-chevron-up"></i>
    </a>

    <!-- ========================= JS here ========================= -->
    <script src="../resources/assets/js/bootstrap.min.js"></script>
    <script src="../resources/assets/js/tiny-slider.js"></script>
    <script src="../resources/assets/js/glightbox.min.js"></script>
    <script src="../resources/assets/js/main.js"></script>
    <script src="../resources/js/cartUpdate.js"></script>
</body>
</html>