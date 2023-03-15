/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers;

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

/**
 *
 * @author user
 */
@WebServlet(name = "AccountProfileMyOrder", urlPatterns = {"/account/profile_myOrder"})
public class AccountProfile2 extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("AccCustomerSession") == null) {
            resp.sendRedirect(req.getContextPath() + "/404error.jsp");
            return;
        }
        Account accCustomer = (Account) req.getSession().getAttribute("AccCustomerSession");
        if (accCustomer == null) {
            resp.sendRedirect("profile_order.jsp");
        } else {
            ArrayList<Order> orderList = new OrderDAO().getAllOrdersByCusID(accCustomer.getCustomerID());
            if (orderList.isEmpty()) {
                req.setAttribute("errorMsg", "Không tìm thấy đơn hàng nào");
            } else {
                ArrayList<OrderDetail> orderDetailList = new OrderDAO().getDetailOfOrderByCusID(accCustomer.getCustomerID());
                req.setAttribute("orderDetailList", orderDetailList);
                req.setAttribute("orderList", orderList);
            }
            // Forward to the JSP page AFTER setting all the attributes
            req.getRequestDispatcher("/profile_order.jsp").forward(req, resp);
        }
    }

}
