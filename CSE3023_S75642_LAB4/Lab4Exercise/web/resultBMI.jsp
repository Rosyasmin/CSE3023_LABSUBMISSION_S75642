<%-- 
    Document   : resultBMI
    Created on : 21 Apr 2026, 4:30:55?pm
    Author     : user
--%>

<%@ include file="header.jsp" %>

<h3>BMI Result</h3>

<%
String bmiStr = request.getParameter("bmi");

if (bmiStr == null || bmiStr.isEmpty()) {
%>
    <p style="color:red;">No BMI data received. Please submit the form properly.</p>
<%
} else {

    double bmi = Double.parseDouble(bmiStr);

    String category;

    if (bmi < 18.5) {
        category = "Underweight";
    } else if (bmi <= 25) {
        category = "Normal";
    } else {
        category = "Overweight";
    }
%>

    <p>Your BMI: <%= String.format("%.2f", bmi) %></p>
    <p>Category: <%= category %></p>

<%
}
%>

<%@ include file="footer.jsp" %>
