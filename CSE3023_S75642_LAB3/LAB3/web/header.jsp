<%-- 
    Document   : header
    Created on : 14 Apr 2026, 3:54:00 pm
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Club System</title>
    <style>
        body {
            font-family: Arial;
            margin: 0;
        }
        .header {
            background-color: #2c3e50;
            color: white;
            padding: 15px;
            text-align: center;
        }
        .nav {
            background-color: #34495e;
            padding: 10px;
            text-align: center;
        }
        .nav a {
            color: white;
            margin: 0 15px;
            text-decoration: none;
            font-weight: bold;
        }
        .nav a:hover {
            color: yellow;
        }
        .container {
            padding: 20px;
        }
    </style>
</head>

<body>

<div class="header">
    <h1>Student Club Management System</h1>
</div>

<div class="nav">
    <a href="registerClub.jsp">Registration</a>
    <a href="feeCalculator.jsp">Fee Calculator</a>
    <a href="memberDirectory.jsp">Club Directory</a>
</div>

<div class="container">
