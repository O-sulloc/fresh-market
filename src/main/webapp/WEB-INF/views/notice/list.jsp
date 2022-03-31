<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

<table class="table">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">제목</th>
      <th scope="col">작성자</th>
      <th scope="col">작성일</th>
    </tr>
  </thead>
  <c:forEach items="${list}" var="dto">
  <tr>
  <td>${dto.num}</td>
  <td><a href="./detail?num=${dto.num}">${dto.title}</a></td>
  <td>${dto.id}</td>
   <td>${dto.regdate}</td>
  </tr>
  </c:forEach>
</table>
  </tbody>
</table>

<a href="./add"><button type="submit">글쓰기</button></a>

</body>
</html>