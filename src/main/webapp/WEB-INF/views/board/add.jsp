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
  <h5>${board} 등록</h5>
  
  <form action="./add" method="post">
  제목 : <input type="text" id=title name="title">
  내용 : <textarea rows="" cols="50" name="contents"></textarea>
  글쓴이 : <input type="text" id="id" name="id">
  
  <button type="submit">등록</button>
  <a href="./list"><button type="submit">목록</button></a>
  
    </form>
  
</body>
</html>