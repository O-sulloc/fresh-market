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
  <title>Document</title>
    
  <!-- Bootstrap core CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/album/">

	<!-- Favicons -->
	<link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
	<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
	<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
	<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
	<link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
	<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
	<meta name="theme-color" content="#7952b3">

</head>
<body>
	
      <div class="album py-5 bg-light">
        <div class="container">
    
          <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
          
          	<c:forEach items="${list}" var="product">
            <div class="col">
              <div class="card shadow-sm">
              
              <c:catch>
              	<img alt="" src="../resources/upload/product/${product.fileDTOs[0].fileName}" width="100%" height="225">
				</c:catch>
                <div class="card-body">
                  <p class="card-text"><a href="./detail?no=${product.no}">${product.proName}</a></p>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                      <button type="button" class="btn btn-sm btn-outline-secondary">장바구니</button>
                      <button type="button" id="updateBtn" onclick="location.href='./update?no=${product.no}'" class="btn btn-sm btn-outline-secondary">수정(관리자)</button>
                      <button type="button" class="btn btn-sm btn-outline-secondary" onclick="location.href='./delete?no=${product.no}'">삭제(관리자)</button>
                    </div>
                    <small class="text-muted">${product.price}원</small>
                  </div>
                </div>
              </div>
            </div>
 			</c:forEach>
 			
 			<div>
 				<c:if test="${pager.pre}">
 					<a href="./list?page=${pager.startNum-1 }">previous</a>
 				</c:if>
 				
 				<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
 					<a href="./list?page=${i}">${i}</a>
 				</c:forEach>
 				
 				<c:if test="${pager.next}">
 					<a href="./list?page=${pager.lastNum+1 }">Next</a>
 				</c:if>
 			</div>
        </div>
      </div>
	</div>
	
	<a href="./add">상품 추가</a>
	
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>