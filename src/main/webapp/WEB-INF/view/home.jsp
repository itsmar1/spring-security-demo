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


    <security:authorize access="hasRole('MANAGER')">
        <!-- Add a link to point to /leaders ... this is for the managers -->
        <p>
            <a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
            (Only for Manager Peeps)
        </p>
    </security:authorize>


    <security:authorize access="hasRole('ADMIN')">
        <!-- Add a link to point to /systems ... this is for the admins -->
        <p>
            <a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
            (Only for Admin Peeps)
        </p>
    </security:authorize>

    <hr>

    <!-- Add a logout button -->
    <form:form action="${pageContext.request.contextPath}/logout" method="post">

        <input type="submit" value="Logout" />

    </form:form>


</body>
</html>













