<%-- 
    Document   : main
    Created on : May 12, 2026, 3:45:15?PM
    Author     : Admin
--%>

<%
String username = (String) session.getAttribute("username");
String firstname = (String) session.getAttribute("firstname");
String lastname = (String) session.getAttribute("lastname");

if(username == null){
    response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
    <title>Main Page</title>
</head>
<body>

<h2>Login Successful</h2>

<p>Username: <%= username %></p>
<p>First Name: <%= firstname %></p>
<p>Last Name: <%= lastname %></p>

</body>
</html>