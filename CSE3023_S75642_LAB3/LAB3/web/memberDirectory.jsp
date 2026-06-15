<%-- 
    Document   : memberDirectory
    Created on : 14 Apr 2026, 3:56:48?pm
    Author     : user
--%>

<%@ page import="java.util.ArrayList" %>
<%@ include file="header.jsp" %>

<h2>Club Committee Members</h2>

<%
    ArrayList<String> members =
        (ArrayList<String>) session.getAttribute("members");

    if (members == null) {
        members = new ArrayList<>();
    }
%>

<table border="1" cellpadding="10" style="border-collapse: collapse; width: 80%; text-align: center;">
    <tr style="background-color:#2c3e50; color:white;">
        <th>No</th>
        <th>Name</th>
        <th>Matric Number</th>
        <th>Club</th>
    </tr>

<%
    for (int i = 0; i < members.size(); i++) {
        String[] data = members.get(i).split("\\|");
%>
    <tr>
        <td><%= (i + 1) %></td>
        <td><%= data[0] %></td>
        <td><%= data[1] %></td>
        <td><%= data[2] %></td>
    </tr>
<%
    }
%>

</table>

<%@ include file="footer.jsp" %>