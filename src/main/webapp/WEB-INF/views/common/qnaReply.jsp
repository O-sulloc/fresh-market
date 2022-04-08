<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	댓글달기

	<c:forEach items="${qnaReply}" var="dto">
	<tr>
		<td></td>
	</tr>
	</c:forEach>
</body>
</html>