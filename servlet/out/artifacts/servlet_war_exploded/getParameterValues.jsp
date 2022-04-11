<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <title>Multiple</title>
</head>
<body>
<form action="/values" method="post">
<h1>Select the counties you traveled </h1>
    India:<input type="checkbox" name="country" value="India">
    U.S  :<input type="checkbox" name="country" value="U.S">
    U.K  :<input type="checkbox" name="country" value="U.K">
    Spain:<input type="checkbox" name="country" value="spain">
    <input type="submit">
</form>
</body>
</html>