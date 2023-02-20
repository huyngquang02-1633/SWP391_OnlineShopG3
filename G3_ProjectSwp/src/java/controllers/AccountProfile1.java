/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers;

import DAL.CustomerDAO;
import models.Account;
import models.Order;
import models.OrderDetail;
import models.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import DAL.OrderDAO;
import DAL.ProductDAO;
import java.sql.Date;
import models.Customer;

/**
 *
 * @author user
 */
@WebServlet(name = "AccountProfile1", urlPatterns = {"/account/profile1"})
public class AccountProfile1 extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Customer customer = new CustomerDAO().getCustomerByID(10);
        req.setAttribute("customer", customer);
//            req.setAttribute("account", account);

        req.getRequestDispatcher("../profile_edit.jsp").forward(req, resp);
    }

}
