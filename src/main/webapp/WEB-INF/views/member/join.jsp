<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="../resources/css/join.css" />
</head>
<body>
	<c:import url="../tmp/header.jsp"></c:import>
	
	<!-- Start Breadcrumbs -->
    <div class="breadcrumbs">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">회원가입</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/market/"><i class="lni lni-home"></i> 홈</a></li>
                        <li>회원가입</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End Breadcrumbs -->
	
	<!-- Start Account Register Area -->
    <div class="account-login section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3 col-md-10 offset-md-1 col-12">
                    <div class="register-form">
                        <div class="title">
                            <h3>회원가입</h3>
                        </div>
                        <form class="row" method="post" action="./join" id="joinForm">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="reg-fn">이름 <span style="color: #ee6a7b">*</span></label>
                                    <input class="form-control" type="text" id="name" name="name" required>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="reg-ln">아이디 <span style="color: #ee6a7b">*</span></label>
                                    <a style="display: contents" href="javascript:idInfo();">
                                    	<input class="form-control" type="text" id="id" name="id" required>
                                    </a>
                                    <p id="idGuide" style="display: none;">
                                    	<span id="idCase1">8자 이상</span>
                                    </p>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="reg-pass">비밀번호 <span style="color: #ee6a7b">*</span></label>
                                    <a style="display: contents" href="javascript:pwInfo();">
                                    	<input class="form-control" type="password" id="pw" name="pw" required>
                                    </a>
                                    <p id="pwGuide" style="display: none;">
                                    	<span id="pwCase1">8자 이상 16자리 이하</span>
                                    </p>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="reg-pass-confirm">비밀번호 확인 <span style="color: #ee6a7b">*</span></label>
                                    <a style="display: contents" href="javascript:pw2Info();">
                                    	<input class="form-control" type="password" id="pw2" name="pw2" required>
                                    </a>
                                    <p id="pw2Guide" style="display: none;">
                                    	<span id="pw2Case1">비밀번호 일치</span>
                                    </p>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="reg-email">이메일 <span style="color: #ee6a7b">*</span></label>
                                    <input class="form-control" type="email" id="email" name="email" required>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="reg-fn">주소 <span style="color: #ee6a7b">*</span></label>
                                    <input class="form-control" type="text" id="address" name="address" required readonly>
                                </div>
                            </div>
                            
                            <div class="button">
                                <button class="btn" id="regBtn" type="button">회원가입</button>
                            </div>
                            <p class="outer-link">이미 가입하셨습니까? <a href="login.html">로그인</a>
                            </p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Account Register Area -->
	
	
	<!-- start footer -->
	<c:import url="../tmp/footer.jsp"></c:import>
	<!-- end footer -->

    <!-- ========================= scroll-top ========================= -->
    <a href="#" class="scroll-top">
        <i class="lni lni-chevron-up"></i>
    </a>

    <!-- ========================= JS here ========================= -->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script type="text/javascript">
    	//카카오 주소찾기
		document.getElementById("address").addEventListener("click", function(){
			new daum.Postcode({
				oncomplete: function(data) {
					document.getElementById("address").value=data.address;
				}
			}).open();			
		})
    </script>
    <script src="../resources/js/join.js"></script>
    <script src="../resources/assets/js/bootstrap.min.js"></script>
    <script src="../resources/assets/js/tiny-slider.js"></script>
    <script src="../resources/assets/js/glightbox.min.js"></script>
    <script src="../resources/assets/js/main.js"></script>
</body>
</html>