package com.lab.controller;

import com.lab.dao.ProductDAO;
import com.lab.model.Product;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 * Name: Murni Rosyasmin Binti Ayob
 * Program: SMSK(SE)
 * Course: CSE3023
 * Lab: MP1
 * Date: 07/04/2026
 */

public class InsertProductServlet extends HttpServlet {

    private ProductDAO dao;

    @Override
    public void init() {
        dao = new ProductDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String category = request.getParameter("category");

        String priceStr = request.getParameter("price");
        priceStr = priceStr.replace("RM", "").trim();
        double price = Double.parseDouble(priceStr);

        int quantity = Integer.parseInt(request.getParameter("quantity"));

        Product product = new Product(name, category, price, quantity);

        try {
            dao.insertProduct(product);
        } catch (Exception e) {
            e.printStackTrace();
        }

        response.sendRedirect("ViewProductServlet");
    }
}