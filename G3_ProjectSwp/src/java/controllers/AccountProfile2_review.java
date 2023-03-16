/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import DAL.OrderDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import models.Account;
import models.Order;
import models.OrderDetail;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "AccountProfile2_review", urlPatterns = {"/AccountProfile2_review"})
public class AccountProfile2_review extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if(req.getSession().getAttribute("AccCustomerSession")==null){
            resp.sendRedirect(req.getContextPath()+"/404error.jsp");
            return;
        }
        Account accCustomer = (Account)req.getSession().getAttribute("AccCustomerSession");
        int orderID = Integer.parseInt(req.getParameter("id"));
//        PrintWriter a = resp.getWriter();
//        a.print(orderID);
        
        
        Order order = new OrderDAO().getOrderByID(orderID);
        ArrayList<OrderDetail> orderDetailList = new OrderDAO().getDetailOfOrderByCusID(accCustomer.getCustomerID());
        
        req.setAttribute("order", order);
        req.setAttribute("orderDetailList", orderDetailList);
        req.getRequestDispatcher("/profile_order_review.jsp").forward(req, resp);
    }
}
