<%-- 
    Document   : populateArray
    Created on : 14 Apr 2026, 3:14:09 pm
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Populate Array</title>

    <style>
        body {
            font-family: Arial;
            background-color: #f2f7ff;
            text-align: center;
        }

        table {
            margin: 0 auto;
            border-collapse: collapse;
            width: 60%;
            background-color: #ffffff;
            box-shadow: 0px 0px 10px #ccc;
        }

        th {
            background-color: #4CAF50;
            color: white;
            padding: 12px;
        }

        td {
            padding: 10px;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #d1e7ff;
        }

        h2 {
            color: #333;
        }

        .footer {
            margin-top: 20px;
            font-size: 14px;
            color: gray;
        }
    </style>
</head>

<body>

<h2>Read Java array and populate it into HTML table</h2>

<%
    int[][] sales = {
        {2500, 2100, 2200},
        {2000, 1900, 2400},
        {1800, 2200, 2450}
    };

    String[] names = {"Salesman 1", "Salesman 2", "Salesman 3"};
%>

<table border="1">

    <tr>
        <th>Salesman</th>
        <th>Jan</th>
        <th>Feb</th>
        <th>Mar</th>
    </tr>

<%
    for(int i = 0; i < sales.length; i++) {
%>
    <tr>
        <td><%= names[i] %></td>
        <td><%= sales[i][0] %></td>
        <td><%= sales[i][1] %></td>
        <td><%= sales[i][2] %></td>
    </tr>
<%
    }
%>

</table>

<div class="footer">
    &copy; 2026 - Syaffiq
</div>

</body>
</html>
