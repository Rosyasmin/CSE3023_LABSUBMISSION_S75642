<%-- 
    Document   : bmiCalculator
    Created on : 21 Apr 2026, 3:00:58 pm
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h3>BMI Calculator</h3>

<form action="processBMI.jsp" method="post">
    Weight (kg): <input type="text" name="weight"><br><br>
    Height (m): <input type="text" name="height"><br><br>
    
    <input type="submit" value="Calculate BMI">
</form>

<%@ include file="footer.jsp" %>
