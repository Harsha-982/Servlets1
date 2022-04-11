<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<html>
  <head>
    <title>Sessions</title>
    <link rel="stylesheet" href="stylesheet.css">
  </head>
  <body>
  <h1 style="margin-left: 400px ; margin-top: 100px" >Login</h1>
  <form action="sessionsServlet" method="post" class="style">
    Username : <input type="text" name="username"><br><br>
    Password : <input type="password" name="password"><br><br>
    <input type="submit" onclick="return checker(this.form)" value="Login">
  </form>
  <script>
    function checker(form) {
      if(form.username.value=="" || form.password.value==""){
        alert("Password or username has not be entered ")
        return false;
      }
      else{
         return true;
      }
    }
  </script>
  </body>
</html>
