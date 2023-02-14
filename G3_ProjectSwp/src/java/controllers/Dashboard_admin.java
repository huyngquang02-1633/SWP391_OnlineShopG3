/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers;

import models.Customer;
import models.Order;
import models.OrderDetail;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import DAL.CustomerDAO;
import DAL.OrderDAO;

/**
 *
 * @author user
 */
@WebServlet(name = "Dashboard_admin", urlPatterns = {"/dashboard_admin"})
public class Dashboard_admin extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LocalDate today = LocalDate.now();
        
        ArrayList<Order> OrderInCurrentMonth = new OrderDAO().getOrderByCurrentMonth(today.getMonthValue());
        ArrayList<Order> OrderInToday = new OrderDAO().getOrderToday();
        ArrayList<Customer> CustomerList = new CustomerDAO().getNewCustomer(today.getMonthValue());
        ArrayList<OrderDetail> orderDetailInCurrentMonth = new OrderDAO().getALLOrderDetailInCurrentMonth(today.getMonthValue(),today.getYear());
        
        double monthlyRevenue = 0;
        for (Order order : OrderInCurrentMonth) {
            for (OrderDetail orderDetail : orderDetailInCurrentMonth) {
                if(order.getOrderID() == orderDetail.getOrderID()){
                    monthlyRevenue+= orderDetail.getSalePrice() * orderDetail.getQuantity();
                }
            }
        }
        double todayRevenue = 0;
        for (Order order : OrderInToday) {
            for (OrderDetail orderDetail : orderDetailInCurrentMonth) {
                if(order.getOrderID() == orderDetail.getOrderID()){
                    todayRevenue+= orderDetail.getSalePrice() * orderDetail.getQuantity();
                }
            }
        }
        
        ArrayList<Double> statisticRevenue = new ArrayList<>();
        for (int i = 1; i <= today.getMonthValue(); i++) {
            double revenueInMonth = 0;
            ArrayList<OrderDetail> odDetailListInMonth = new OrderDAO().getOrderDetailByMonth(i);
            for (OrderDetail orderDetailEle : odDetailListInMonth) {
                revenueInMonth += orderDetailEle.getQuantity() * orderDetailEle.getSalePrice();
            }
            statisticRevenue.add(revenueInMonth);
        }

        
        
        
        req.setAttribute("totalOrderInMonth", OrderInCurrentMonth.size());
        req.setAttribute("totalNewCusInMonth", CustomerList.size());
        req.setAttribute("monthlyRevenue", Math.round(monthlyRevenue));
        req.setAttribute("todayRevenue", Math.round(todayRevenue));
        req.setAttribute("statisticRevenue", statisticRevenue);
        
        req.getRequestDispatcher("dashboard.jsp").forward(req, resp);
    }
    
}
