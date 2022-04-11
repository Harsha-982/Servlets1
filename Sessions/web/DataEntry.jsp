<%@ page contentType="text/html;charset=UTF-8" language="java"  buffer="1000kb" %>
<%@ include file="Link.jsp"%>
<html>
<head>
    <title>Add your todo list here </title>
    <link rel="stylesheet" href="stylesheet.css">
</head>
<body>
<div class="style">
<form action="/data" >
    Add to todo list<input type="text" name="data">
    <input type="submit" value="add">
</form>
    <%
        if(session.getAttribute("data")!=null){
    %>
        <%=session.getAttribute("data")%>
    <%
        }
    %>
</div>
</body>

</html>
