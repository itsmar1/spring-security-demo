<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 7/14/2022
  Time: 11:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
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


    <hr>

    <!-- display username and role -->

    <p>
        User: <security:authentication property="principal.username" />
        <br><br>
        Role(s): <security:authentication property="principal.authorities" />
    </p>

    <hr>

    <!-- Add a logout button -->
    <form:form action="${pageContext.request.contextPath}/logout" method="post">

        <input type="submit" value="Logout" />

    </form:form>


</body>
</html>













