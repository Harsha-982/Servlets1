<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
hi everyone how are you
<c:forTokens items="harsha-402-kiet" delims="-" var="iter">
    <c:out value="${iter}"/>
</c:forTokens>
<c:url value="/index.jsp" var="completeURL">
    <c:param name="trackingId" value="786"/>
    <c:param name="user" value="Nakul"/>
</c:url>


</body>
</html>
