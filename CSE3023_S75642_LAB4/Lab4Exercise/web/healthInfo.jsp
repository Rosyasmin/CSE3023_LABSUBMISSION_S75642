<%-- 
    Document   : healthInfo
    Created on : 21 Apr 2026, 3:02:25 pm
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ include file="header.jsp" %>

<h3>BMI Health Categories</h3>

<%
ArrayList<String> categories = new ArrayList<String>();

categories.add("Underweight (< 18.5)");
categories.add("Normal (18.5 - 25)");
categories.add("Overweight (> 25)");
%>

<table border="1" cellpadding="10">
    <tr>
        <th>No</th>
        <th>Category</th>
    </tr>

<%
for (int i = 0; i < categories.size(); i++) {
%>
    <tr>
        <td><%= (i + 1) %></td>
        <td><%= categories.get(i) %></td>
    </tr>
<%
}
%>

</table>

<%@ include file="footer.jsp" %>