<%-- 
    Document   : carList
    Created on : 2 Jun 2026, 3:08:01 pm
    Author     : user
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- CRITICAL FIX: These two lines tell Tomcat how to parse your database loops and display format currency symbols --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <title>Car Shop Management</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #333">
            <div><a href="" class="navbar-brand"> Car Shop App </a></div>
            <ul class="navbar-nav">
                <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Inventory</a></li>
            </ul>
        </nav>
    </header>
    <br>
    <div class="row">
        <div class="container">
            <h3 class="text-center">Car Directory List</h3>
            <hr>
            <div class="container text-left">
                <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add New Car</a>
            </div>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Brand</th>
                        <th>Model</th>
                        <th>Cylinders</th>
                        <th>Price</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="car" items="${listCars}">
                        <tr>
                            <td><c:out value="${car.carId}" /></td>
                            <td><c:out value="${car.brand}" /></td>
                            <td><c:out value="${car.model}" /></td>
                            <td><c:out value="${car.cyclinder}" /> Pistons</td>
                            <td>RM <fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits="2" value="${car.price}" /></td>
                            <td>
                                <a href="edit?id=<c:out value='${car.carId}' />" class="btn btn-primary btn-sm">Edit</a>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="delete?id=<c:out value='${car.carId}' />" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this car?');">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>