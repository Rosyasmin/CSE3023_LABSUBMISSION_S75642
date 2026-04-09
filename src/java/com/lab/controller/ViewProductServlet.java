package com.lab.controller;

import com.lab.dao.ProductDAO;
import com.lab.model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;

/**
 * Name: Murni Rosyasmin Binti Ayob
 * Program: SMSK(SE)
 * Course: CSE3023
 * Lab: MP1
 * Date: 07/04/2026
 */

public class ViewProductServlet extends HttpServlet {

    private ProductDAO dao;

    @Override
    public void init() {
        dao = new ProductDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            List<Product> list = dao.selectAllProducts();

            out.println("<h2>Product List</h2>");
            out.println("<a href='add_product.html'>Add New Product</a><br><br>");

            out.println("<table border='1'>");
            out.println("<tr><th>ID</th><th>Name</th><th>Category</th><th>Price</th><th>Quantity</th><th>Action</th></tr>");

            if (list != null && !list.isEmpty()) {
                for (Product p : list) {
                    out.println("<tr>");
                    out.println("<td>" + p.getId() + "</td>");
                    out.println("<td>" + p.getName() + "</td>");
                    out.println("<td>" + p.getCategory() + "</td>");
                    out.println("<td>" + p.getPrice() + "</td>");
                    out.println("<td>" + p.getQuantity() + "</td>");
                    out.println("<td>"
                            + "<a href='UpdateProductServlet?id=" + p.getId() + "'>Edit</a> | "
                            + "<a href='DeleteProductServlet?id=" + p.getId() + "'>Delete</a>"
                            + "</td>");
                    out.println("</tr>");
                }
            } else {
                out.println("<tr><td colspan='6'>No products found.</td></tr>");
            }

            out.println("</table>");

        } catch (Exception e) {
            out.println("<p>Error: " + e.getMessage() + "</p>");
            e.printStackTrace(out);
        }
    }
}