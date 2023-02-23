/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers;

import models.Account;
import models.Customer;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import DAL.AccountDAO;
import DAL.CustomerDAO;
import jakarta.servlet.annotation.WebServlet;

/**
 *
 * @author user
 */
@WebServlet(name = "AccountProfile", urlPatterns = {"/account/profile"})
public class AccountProfile extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if(req.getSession().getAttribute("AccCustomerSession")==null){
            resp.sendRedirect(req.getContextPath()+"/404error.jsp");
            return;
        }
//        if (req.getSession().getAttribute("AccSession") != null) {
//            Account a = (Account) req.getSession().getAttribute("AccSession");
//            Account account = new AccountDAO().getAccountByEmail(a.getEmail());
            Customer customer = new CustomerDAO().getCustomerByID(1);
            req.setAttribute("customer", customer);
//            req.setAttribute("account", account);

            req.getRequestDispatcher("../profile.jsp").forward(req, resp);
//        } else {
//
//            resp.getWriter().print("Access denied");
//        }
    }

}
