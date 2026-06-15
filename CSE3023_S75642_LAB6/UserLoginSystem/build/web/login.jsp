<%-- 
    Document   : login
    Created on : May 12, 2026, 3:44:06?PM
    Author     : Admin
--%>

<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
</head>
<body>

<h2>Login</h2>

<%
String msg = request.getParameter("msg");
if(msg != null){
    out.println("<p style='color:red;'>" + msg + "</p>");
}
%>

<form action="doLogin.jsp" method="post">

    Username: <input type="text" name="username" required><br><br>

    Password: <input type="password" name="password" required><br><br>

    <input type="submit" value="Login">

</form>

</body>
</html>