<%-- 
    Document   : registerClub
    Created on : 14 Apr 2026, 3:55:36?pm
    Author     : user
--%>

<%@ include file="header.jsp" %>

<h2>Club Registration</h2>

<form action="processRegistration.jsp" method="post">
    Student Name:<br>
    <input type="text" name="studentName" required><br><br>

    Matric Number:<br>
    <input type="text" name="matricNumber" required><br><br>

    Select Club:<br>
    <select name="club">
        <option>ComTech Club</option>
        <option>Robotics Club</option>
        <option>E-Sports Club</option>
        <option>Nautical Club</option>
    </select><br><br>

    <input type="submit" value="Register">
</form>

<%@ include file="footer.jsp" %>
