<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="no-js">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge" />
	<title>Market</title>
	<meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" type="image/x-icon" href="resources/assets/images/favicon.svg" />
    
    <!-- ========================= CSS here ========================= -->
    <link rel="stylesheet" href="resources/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="resources/assets/css/LineIcons.3.0.css" />
    <link rel="stylesheet" href="resources/assets/css/tiny-slider.css" />
    <link rel="stylesheet" href="resources/assets/css/glightbox.min.css" />
    <link rel="stylesheet" href="resources/assets/css/main.css" />
</head>

<body>
    <c:import url="./tmp/header.jsp"></c:import>

    <!-- Start Hero Area -->
    <section class="hero-area" style="margin: 0px">
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
				      		<img alt="" src="./resources/img/banner_1.png" class="bd-placeholder-img" width="100%" height="100%">
				      	</a>
				      </div>
				      
				      
				      <div class="carousel-item">
						<a href="/market/notice/detail?num=1">
				      		<img alt="" src="./resources/img/banner_2.png" class="bd-placeholder-img" width="100%" height="100%">
				      	</a>
				      </div>
				      
				      
				      <div class="carousel-item">
				        <a href="/market/notice/detail?num=21">
				      		<img alt="" src="./resources/img/banner_3.png" class="bd-placeholder-img" width="100%" height="100%">
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
    </section>
    <!-- End Hero Area -->

    <!-- Start Trending Product Area -->
    <section class="trending-product section" style="margin-top: 12px; background-color: white;">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <h2>최저가 상품</h2>
                    </div>
                </div>
            </div>
            <div class="row">
             	<!-- 상품 반복 출력 -->
               	<c:forEach items="${list }" var="product" begin="0" end="7">
	                <div class="col-lg-3 col-md-6 col-12">
                		<div class="single-product">
                			<div class="product-image">
	                            <img src="../resources/upload/product/${product.fileDTOs[0].fileName}" alt="#">
	                            <div class="button">
	                                <a href="product-details.html" class="btn"><i class="lni lni-cart"></i> Add to Cart</a>
	                            </div>
	                        </div>
	                        <div class="product-info">
	                            <h4 class="title">
	                                <a href="./detail?productNum=${product.productNum}">${product.productName}</a>
	                            </h4>
	                            <ul class="review">
	                                <li><i class="lni lni-star-filled"></i></li>
	                                <li><i class="lni lni-star-filled"></i></li>
	                                <li><i class="lni lni-star-filled"></i></li>
	                                <li><i class="lni lni-star-filled"></i></li>
	                                <li><i class="lni lni-star"></i></li>
	                                <li><span>4.0 Review(s)</span></li>
	                            </ul>
	                            <div class="price">
	                                <span>${product.productPrice}원</span>
	                            </div>
	                        </div>
                		</div>
	                </div>
               	</c:forEach>
            </div>
        </div>
    </section>
    <!-- End Trending Product Area -->

    <!-- Start Call Action Area -->
	<div class="col-lg-8 offset-lg-2 col-12" style="margin-left: 7%;">
		<img alt="" style="max-width: 130%;" src="https://img-cf.kurly.com/banner/random-band/pc/img/8ded70f9-bca2-4a70-b290-beb571ff82ab">
	</div>
    <!-- End Call Action Area -->

    <!-- Start Banner Area -->
    <section class="banner section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="single-banner" style="background-image:url('resources/assets/images/banner/banner-1-bg.jpg')">
                        <div class="content">
                            <h2>Smart Watch 2.0</h2>
                            <p>Space Gray Aluminum Case with <br>Black/Volt Real Sport Band </p>
                            <div class="button">
                                <a href="product-grids.html" class="btn">View Details</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="single-banner custom-responsive-margin"
                        style="background-image:url('resources/assets/images/banner/banner-2-bg.jpg')">
                        <div class="content">
                            <h2>Smart Headphone</h2>
                            <p>Lorem ipsum dolor sit amet, <br>eiusmod tempor
                                incididunt ut labore.</p>
                            <div class="button">
                                <a href="product-grids.html" class="btn">Shop Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Area -->

    <!-- Start Shipping Info -->
    <section class="shipping-info">
        <div class="container">
            <ul>
                <!-- Free Shipping -->
                <li>
                    <div class="media-icon">
                        <i class="lni lni-delivery"></i>
                    </div>
                    <div class="media-body">
                        <h5>Free Shipping</h5>
                        <span>On order over $99</span>
                    </div>
                </li>
                <!-- Money Return -->
                <li>
                    <div class="media-icon">
                        <i class="lni lni-support"></i>
                    </div>
                    <div class="media-body">
                        <h5>24/7 Support.</h5>
                        <span>Live Chat Or Call.</span>
                    </div>
                </li>
                <!-- Support 24/7 -->
                <li>
                    <div class="media-icon">
                        <i class="lni lni-credit-cards"></i>
                    </div>
                    <div class="media-body">
                        <h5>Online Payment.</h5>
                        <span>Secure Payment Services.</span>
                    </div>
                </li>
                <!-- Safe Payment -->
                <li>
                    <div class="media-icon">
                        <i class="lni lni-reload"></i>
                    </div>
                    <div class="media-body">
                        <h5>Easy Return.</h5>
                        <span>Hassle Free Shopping.</span>
                    </div>
                </li>
            </ul>
        </div>
    </section>
    <!-- End Shipping Info -->

	<!-- start footer -->
	<c:import url="./tmp/footer.jsp"></c:import>
	<!-- end footer -->

    <!-- ========================= scroll-top ========================= -->
    <a href="#" class="scroll-top">
        <i class="lni lni-chevron-up"></i>
    </a>

    <!-- ========================= JS here ========================= -->
    <script src="resources/assets/js/bootstrap.min.js"></script>
    <script src="resources/assets/js/tiny-slider.js"></script>
    <script src="resources/assets/js/glightbox.min.js"></script>
    <script src="resources/assets/js/main.js"></script>
    <script type="text/javascript">
        //========= Hero Slider 
        tns({
            container: '.hero-slider',
            slideBy: 'page',
            autoplay: true,
            autoplayButtonOutput: false,
            mouseDrag: true,
            gutter: 0,
            items: 1,
            nav: false,
            controls: true,
            controlsText: ['<i class="lni lni-chevron-left"></i>', '<i class="lni lni-chevron-right"></i>'],
        });

        //======== Brand Slider
        tns({
            container: '.brands-logo-carousel',
            autoplay: true,
            autoplayButtonOutput: false,
            mouseDrag: true,
            gutter: 15,
            nav: false,
            controls: false,
            responsive: {
                0: {
                    items: 1,
                },
                540: {
                    items: 3,
                },
                768: {
                    items: 5,
                },
                992: {
                    items: 6,
                }
            }
        });
    </script>
</body>

</html>