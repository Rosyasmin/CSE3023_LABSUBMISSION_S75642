/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.lab.controller;

/**
 * Document   : PayrollServlet.java
 * Created on : 29 Apr 2026
 * Author     : Murni Rosyasmin Binti Ayob
 * Matric No  : S75642
 */

import com.lab.bean.Employee;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// URL mapping
@WebServlet("/payroll")
public class PayrollServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Create list
        ArrayList<Employee> list = new ArrayList<>();

        // Employee 1
        Employee e1 = new Employee();
        e1.setEmpId("E001");
        e1.setName("Ali");
        e1.setDepartment("IT");
        e1.setBasicSalary(3000);

        // Employee 2
        Employee e2 = new Employee();
        e2.setEmpId("E002");
        e2.setName("Siti");
        e2.setDepartment("HR");
        e2.setBasicSalary(4500);

        // Employee 3
        Employee e3 = new Employee();
        e3.setEmpId("E003");
        e3.setName("Ahmad");
        e3.setDepartment("Finance");
        e3.setBasicSalary(2500);

        // Employee 4
        Employee e4 = new Employee();
        e4.setEmpId("E004");
        e4.setName("Aina");
        e4.setDepartment("Marketing");
        e4.setBasicSalary(5000);

        // Employee 5
        Employee e5 = new Employee();
        e5.setEmpId("E005");
        e5.setName("John");
        e5.setDepartment("Admin");
        e5.setBasicSalary(2000);

        // Add all to list
        list.add(e1);
        list.add(e2);
        list.add(e3);
        list.add(e4);
        list.add(e5);

        // Send data to JSP
        request.setAttribute("employeeList", list);

        // Forward to view
        request.getRequestDispatcher("payroll_view.jsp").forward(request, response);
    }
}