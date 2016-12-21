<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>

<html>
<head>
    <title>Add Laptop</title>
</head>
<body>

<c:forEach var="laptop" items="${laptops}">
    <div>
            ${laptop.brand} ${laptop.prise} ${laptop.rating}  <a href="deleteLaptop/${laptop.id}">Delete</a>
    </div>
    <br>
</c:forEach>

    <h1>Add Laptop</h1>

    <form:form modelAttribute="laptop" action="saveLaptop" method="post">
<div>
    <div>
        <form>

            <p>
                <form:input path="brand" type="text"
                            class="feedback-input"
                            id="brand" placeholder="Brand" />
            </p>
            <p>
                <form:input path="quantity" type="text"
                            class="feedback-input"
                            id="quantity" placeholder="Quantity" />
            </p>
            <p>
                <form:input path="prise" type="text"
                            class="feedback-input"
                            id="prise" placeholder="Prise" />
            </p>

            <div>
                <input type="submit" value="SEND"/>
            </div>
        </form>
    </div>
    </form:form>

</body>
</html>
