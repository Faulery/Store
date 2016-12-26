<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
    <link rel="stylesheet" href="css/login.css">

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
    <link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
</head>

<body>
<div>
    <sec:authorize access="hasRole('ROLE_ADMIN')">
<c:forEach var="userDTO" items="${usersDTOs}">

        ${userDTO.name} ${userDTO.serName} <a href="deleteUser/${userDTO.id}">Delete</a>
</c:forEach>
    </sec:authorize>
</div>

<h1>Sign Up</h1>

<form:form modelAttribute="user" action="saveUser" method="post">
<div id="form-main">
    <div id="form-div">
        <form class="form" id="form1">

            <p class="email">
                <form:input path="email" type="email"
                            class="validate[required,custom[email]] feedback-input"
                            id="email" placeholder="Email"  />
            </p>

            <p class="name">
                <form:input path="name" type="text"
                            class="validate[required,custom[onlyLetter],length[0,100]] feedback-input"
                            placeholder="Name" id="name" />
            </p>

            <p class="name">
                <form:input path="serName" type="text"
                            class="validate[required,custom[onlyLetter]] feedback-input"
                            id="serName" placeholder="Second name" />
            </p>

            <p class="password">
                <form:input path="password" type="password"
                            class="validate[required,custom[email]] feedback-input"
                            id="password" placeholder="Password" />
            </p>

            <div class="submit">
                <input type="submit" value="SEND" id="button-blue" />
                <div class="ease"></div>
            </div>
        </form>
    </div>
    </form:form>

</body>

</html>