<%-- 
    Document   : feeCalculator
    Created on : 14 Apr 2026, 3:56:17?pm
    Author     : user
--%>

<%@ include file="header.jsp" %>

<h2>Membership Fee Calculator</h2>

<form method="post">
    Number of Activities Joined:<br>
    <input type="number" name="activities" required><br><br>
    <input type="submit" value="Calculate">
</form>

<%
    String act = request.getParameter("activities");

    if (act != null) {
        int activities = Integer.parseInt(act);
        double total = activities * 10.0;
%>

<h3>Total Fee: RM <%= String.format("%.2f", total) %></h3>

<%
    }
%>

<%@ include file="footer.jsp" %>