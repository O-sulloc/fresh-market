<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<c:if test="${member.id eq 'admin1234' }">
		<a href="./add">상품 추가</a>
	</c:if>
      <div class="album py-5 bg-light">
        <div class="container">
    
          <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4 g-3">
          
          	<c:forEach items="${list}" var="product">
            <div class="col">
              <div class="card shadow-sm">
              
              <c:catch>
              	<img alt="" src="../resources/upload/product/${product.fileDTOs[0].fileName}" width="100%" height="225">
				</c:catch>
                <div class="card-body">
                  <p class="card-text"><a href="./detail?productNum=${product.productNum}">${product.productName}</a></p>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                      
                      <c:if test="${member.id eq 'admin1234' }">
	                      <button type="button" id="updateBtn" onclick="location.href='./update?productNum=${product.productNum}'" class="btn btn-sm btn-outline-secondary">수정(관리자)</button>
	                      <button type="button" class="btn btn-sm btn-outline-secondary" onclick="location.href='./delete?productNum=${product.productNum}'">삭제(관리자)</button>
                      </c:if>
                    </div>
                    <small class="text-muted">${product.productPrice}원</small>
                  </div>
                </div>
              </div>
            </div>
 			</c:forEach>		
        </div>
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
</body>
</html>