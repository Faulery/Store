<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<h2>Login</h2>
<form:form action="loginprocesing" method="post">
    <input name="username" type="text" placeholder="Login"/>
    <input name="password" type="password" placeholder="Password"/>
    <button>Log In</button>
</form:form>

