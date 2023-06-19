<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css"> 
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Fruit Store</h1>
<div class="container">

<table class="table">
  <thead>
    <tr>
      
      <th scope="col">Name</th>
      <th scope="col">Price</th>
      
    </tr>
  </thead>
  <tbody>
   <c:forEach var="fruit" items="${listOfFruit}">
    <tr>  
      <td>
        <c:out value="${fruit.name}"></c:out>
      </td>
      <td>
      	<c:out value="${fruit.price}"></c:out>
      </td>
    </tr>
        
    </c:forEach>
    
  </tbody>
</table>
</div>

</body>
</html>