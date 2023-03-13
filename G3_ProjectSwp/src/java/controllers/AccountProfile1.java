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
import java.time.LocalDate;
import models.Customer;

/**
 *
 * @author user
 */
@WebServlet(name = "AccountProfile1", urlPatterns = {"/account/profile1"})
public class AccountProfile1 extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("AccCustomerSession") != null) {
            Account a = (Account) req.getSession().getAttribute("AccCustomerSession");
            String firstName = req.getParameter("txtFirstName");
            String lastName = req.getParameter("txtLastName");
            String address = req.getParameter("txtAddress");
            String contactTitle = req.getParameter("txtContactTitle");
            String Phone = req.getParameter("txtPhone");
            Date creatDate = Date.valueOf(req.getParameter("txtCreatDate"));
            Boolean gender = Boolean.valueOf(req.getParameter("txtGender"));
            int customerID = req.getIntHeader("txtCustomerID");
            if(req.getParameter("txtBirthday")!=""){
                Date birthday = Date.valueOf(req.getParameter("txtBirthday"));
                Customer cus = new Customer(a.getCustomerID(), firstName, lastName, gender, contactTitle, birthday, address, Phone, creatDate);
                new AccountDAO().editInfo(cus);
            }
            else{
                Customer cus = new Customer(a.getCustomerID(), firstName, lastName, gender, contactTitle, address, Phone, creatDate);
                new AccountDAO().editInfo(cus);
            }
            resp.sendRedirect("../account/profile");
        } else {
            resp.sendRedirect(req.getContextPath() + "/404error.jsp");
            return;
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("AccCustomerSession") != null) {
            Account a = (Account) req.getSession().getAttribute("AccCustomerSession");
            Customer customer = new CustomerDAO().getCustomerByID(a.getCustomerID());
            req.setAttribute("customer", customer);
            req.getRequestDispatcher("/profile_edit.jsp").forward(req, resp);
        } else {
            resp.sendRedirect(req.getContextPath() + "/404error.jsp");
            return;
        }

    }

}
