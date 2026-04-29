<%-- 
    Document   : processRegistration
    Created on : 14 Apr 2026, 4:04:20?pm
    Author     : user
--%>

<%@page import="java.util.ArrayList"%>
<%@ include file="header.jsp" %>

<h2>Registration Details</h2>

<%
    String name = request.getParameter("studentName");
    String matric = request.getParameter("matricNumber");
    String club = request.getParameter("club");
    
    // Get session list
    ArrayList<String> members = (ArrayList<String>) session.getAttribute("members");

    // If first time, create list
    if (members == null) {
        members = new ArrayList<>();
    }

    // Add new member
    members.add(name + " | " + matric + " | " + club);

    // Save back to session
    session.setAttribute("members", members);
%>

<table border="1" cellpadding="10">
    <tr>
        <th>Student Name</th>
        <td><%= name %></td>
    </tr>
    <tr>
        <th>Matric Number</th>
        <td><%= matric %></td>
    </tr>
    <tr>
        <th>Selected Club</th>
        <td><%= club %></td>
    </tr>
</table>

<%@ include file="footer.jsp" %>
