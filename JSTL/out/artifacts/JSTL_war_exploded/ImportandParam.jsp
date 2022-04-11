<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:import url="include/header.jsp">
    <c:param name="title" value="importandParam"/>
</c:import>

<%
    String[] names={"harsha","usha","manjeeth"};
%>
<c:set var="names" value="<%=names%>"/>
${fn:length(names)}<br>
<%--3--%>

<c:set var="element" value="${fn:split('www.google.com','.')}"/>
<c:forEach var="ele" items="${element}">
    ${ele}<br>
</c:forEach>
<%--we split a string and now lets join it--%>
<c:set var="name" value="${fn:join(element,'.')}"/>
${fn:startsWith(name, W)}

<%--if we need a custom name on the url bar set some params--%>
<c:import url="include/footer.jsp"></c:import>