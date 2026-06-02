/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.WEB;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.DAO.CarDAO;
import com.Model.Car;

@WebServlet("/")
public class CarServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private CarDAO carDAO;

    @Override
    public void init() {
        carDAO = new CarDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();

        try {
            switch (action) {
                case "/new":
                    showNewForm(request, response);
                    break;
                case "/insert":
                    insertCar(request, response);
                    break;
                case "/delete":
                    deleteCar(request, response);
                    break;
                case "/edit":
                    showEditForm(request, response);
                    break;
                case "/update":
                    updateCar(request, response);
                    break;
                case "/list":
                    listCars(request, response);
                    break;
                default:
                    listCars(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void listCars(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<Car> listCars = carDAO.selectAllCars();
        request.setAttribute("listCars", listCars);
        RequestDispatcher dispatcher = request.getRequestDispatcher("carList.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("carForm.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Car existingCar = carDAO.selectCar(id);
        request.setAttribute("car", existingCar);
        RequestDispatcher dispatcher = request.getRequestDispatcher("carForm.jsp");
        dispatcher.forward(request, response);
    }

    private void insertCar(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        String brand = request.getParameter("brand");
        String model = request.getParameter("model");
        int cyclinder = Integer.parseInt(request.getParameter("cyclinder"));
        double price = Double.parseDouble(request.getParameter("price"));
        
        Car newCar = new Car(brand, model, cyclinder, price);
        carDAO.insertCar(newCar);
        
        // Use direct method invocation instead of relative text routing links
        listCars(request, response);
    }

    private void updateCar(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        String brand = request.getParameter("brand");
        String model = request.getParameter("model");
        int cyclinder = Integer.parseInt(request.getParameter("cyclinder"));
        double price = Double.parseDouble(request.getParameter("price"));

        Car car = new Car(id, brand, model, cyclinder, price);
        carDAO.updateCar(car);
        
        // Use direct method invocation to forward updated array state instantly
        listCars(request, response);
    }

    private void deleteCar(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        carDAO.deleteCar(id);
        
        // Use direct method invocation to refresh the view table interface
        listCars(request, response);
    }
}