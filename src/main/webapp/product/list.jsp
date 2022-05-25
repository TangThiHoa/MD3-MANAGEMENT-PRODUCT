<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: AE
  Date: 5/25/2022
  Time: 2:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List</title>
</head>
<body>
<h1><a href="/products?action=create">Creat Product</a></h1>
<c:forEach items="${danhSach}" var="product">
    <h2> ${product.id},${product.name},${product.price}
        <a href="/products?action=edit&id=${product.id}">Edit</a>
        <a href="/products?action=delete&id=${product.id}">Delete</a>
    </h2>
</c:forEach>

</body>
</html>
