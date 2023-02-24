/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers;

import DAL.AccountDAO;
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
        String firstName = req.getParameter("txtFirstName");
        String lastName = req.getParameter("txtLastName");
        String address = req.getParameter("txtAddress");
        String contactTitle = req.getParameter("txtContactTitle");
//        Date birthday = req.getParameter("txtBirthday");
        String Phone = req.getParameter("txtPhone");
//        Date creatDate = req.getParameter("txtCreatDate");
//        Boolean gender = req.getParameter("txtGender");
        int customerID = req.getIntHeader("txtCustomerID");

        Customer cus = new Customer(1, firstName, lastName, contactTitle, address, Phone);
//        customer.setCustomerID(customerID);
//        customer.setFirstName(firstName);
//        customer.setLastName(lastName);
//        customer.setContactTitle(contactTitle);
//        customer.setAddress(address);
//        customer.setPhoneNumber(Phone);
        
        new AccountDAO().editInfo(cus);
        
        req.getRequestDispatcher("../profile.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if(req.getSession().getAttribute("AccCustomerSession")==null){
            resp.sendRedirect(req.getContextPath()+"/404error.jsp");
            return;
        }
        Customer customer = new CustomerDAO().getCustomerByID(10);
        req.setAttribute("customer", customer);
//            req.setAttribute("account", account);

        req.getRequestDispatcher("/profile_edit.jsp").forward(req, resp);
    }

}
