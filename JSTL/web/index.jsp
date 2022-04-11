<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
  <head>
    <title></title>
  </head>
  <body>
  <c:out value="harsha togaru"/> <%--c:out is like <%=%> --%>
  <c:import url="new.jsp"/><%--output  harsha togaru hi everyone how are you--%>
  <%-- c:import is similar to include tag and additional feature is it includes content from outside the sever too--%>
  <c:set var="age" scope="session" value="40"/>
  <c:out value="${age}"/>

  <c:remove var="age"/>
  <c:out value="${age}"/>

  <c:catch var="error">
    <%int s=2/0;%>
  </c:catch>
  <c:if test="${error!=null}">
    <p>Type of exception is :${error}</p>
    There is an exception: ${error.message}
  </c:if>

  <c:set var="income" scope="session" value="4000"/>
  <c:choose>
    <c:when test="${income <= 1000}">
      Income is not good.
    </c:when>
    <c:when test="${income > 10000}">
      Income is very good.
    </c:when>
    <c:otherwise>
      Income is undetermined...
    </c:otherwise>
  </c:choose>
  <<%--choose tag is to choose between its subtag when
  if all the when tags are false then otherwise gets executed
  choose === switch case
  when =case
  otherwise= default
  --%>

  <c:forEach var="j" begin="1" end="3">
  <c:out value="${j}"/><p> <%-- 1 2 3--%>
    </c:forEach>

  </body>
</html>
