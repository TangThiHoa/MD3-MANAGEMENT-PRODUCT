<%--
  Created by IntelliJ IDEA.
  User: AE
  Date: 5/25/2022
  Time: 4:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update</title>
</head>
<body>
<a href="/products">List of products</a>
<form  method="post">
    <input type="text" name="id" placeholder="Enter in id" value="${spsua.id}" >
    <input type="text" name="name" placeholder="Enter in name" value="${spsua.name}">
    <input type="text" name="price" placeholder="Enter in price" value="${spsua.price}">
    <button>Click</button>
</form>


</body>
</html>
