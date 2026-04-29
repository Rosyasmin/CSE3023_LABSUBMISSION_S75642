<%-- 
    Document   : processBMI
    Created on : 21 Apr 2026, 3:01:34 pm
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
String wStr = request.getParameter("weight");
String hStr = request.getParameter("height");

double bmi = 0;
String category = "";

if (wStr != null && hStr != null) {
    try {
        double weight = Double.parseDouble(wStr);
        double height = Double.parseDouble(hStr);

        if (height == 0) {
            out.println("Height cannot be zero!");
        } else {

            bmi = weight / (height * height);

            if (bmi < 18.5) {
                category = "Underweight";
            } else if (bmi <= 25) {
                category = "Normal";
            } else {
                category = "Overweight";
            }

%>

<jsp:forward page="resultBMI.jsp">
    <jsp:param name="bmi" value="<%= bmi %>" />
    <jsp:param name="category" value="<%= category %>" />
</jsp:forward>

<%
        }
    } catch (Exception e) {
        out.println("Invalid input! Please enter numbers only.");
    }
}
%>