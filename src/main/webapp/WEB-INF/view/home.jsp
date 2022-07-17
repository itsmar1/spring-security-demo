<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 7/14/2022
  Time: 11:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>luv2code Company Home Page</title>
</head>
<body>

    <h2>luv2code Company Home Page - Yoohoo!!</h2>
    <hr>

    <p>
    Welcome to the luv2code Company Home Page
    </p>

    <!-- Add a logout button -->
    <form:form action="${pageContext.request.contextPath}/logout" method="post">

        <input type="submit" value="Logout" />

    </form:form>


</body>
</html>













