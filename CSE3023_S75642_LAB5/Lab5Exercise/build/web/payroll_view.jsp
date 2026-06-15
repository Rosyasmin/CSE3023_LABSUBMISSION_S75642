<%-- 
    Document   : payroll_view
    Created on : 29 Apr 2026, 3:30:53 pm
    Author     : Murni Rosyasmin Binti Ayob
    Matric No  : S75642
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Employee Payroll</title>
    <style>
        body {
    font-family: Arial, sans-serif;
    background-color: #f4f8fc;
    margin: 0;
    padding: 0;
    text-align: center;
}

h2 {
    color: #2c3e50;
    margin-top: 30px;
}

table {
    margin: 30px auto;
    border-collapse: collapse;
    width: 70%;
    background-color: #ffffff;
    box-shadow: 0 4px 12px rgba(0,0,0,0.08);
    border-radius: 8px;
    overflow: hidden;
}

th {
    background-color: #6fa8dc;
    color: white;
    padding: 12px;
}

td {
    border: 1px solid #e0e6ed;
    padding: 10px;
    color: #333;
}

tr:nth-child(even) {
    background-color: #f0f6ff;
}

tr:hover {
    background-color: #dcecff;
}
    </style>
</head>
<body>

<h2>Employee Payroll Display System</h2>

<table>
    <tr>
        <th>Employee ID</th>
        <th>Name</th>
        <th>Department</th>
        <th>Basic Salary (RM)</th>
        <th>Status</th>
    </tr>

    <c:forEach var="emp" items="${employeeList}">
        <tr>
            <td>${emp.empId}</td>
            <td>${emp.name}</td>
            <td>${emp.department}</td>
            <td>${emp.basicSalary}</td>

            <td>
                <c:choose>
                    <c:when test="${emp.basicSalary >= 3000}">
                        Senior
                    </c:when>
                    <c:otherwise>
                        Junior
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>
    </c:forEach>

</table>

</body>
</html>
