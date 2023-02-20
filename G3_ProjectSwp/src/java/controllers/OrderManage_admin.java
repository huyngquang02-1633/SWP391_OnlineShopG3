/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers;

import models.Category;
import models.Customer;
import models.Employee;
import models.Order;
import models.OrderDetail;
import models.PaginationObject;
import models.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import DAL.CategoryDAO;
import DAL.CustomerDAO;
import DAL.EmployeeDAO;
import DAL.OrderDAO;
import DAL.ProductDAO;

/**
 *
 * @author user
 */
@WebServlet(name = "OrderManage_admin", urlPatterns = {"/orderManage_admin"})
public class OrderManage_admin extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if(req.getSession().getAttribute("AccAdminSession")==null){
            resp.sendRedirect(req.getContextPath()+"/404error.jsp");
            return;
        }
        OrderDAO dao = new OrderDAO();
        ArrayList<Order> ArrayList = dao.getAllOrders();
        req.setAttribute("listOrder", ArrayList);
        req.getRequestDispatcher("order.jsp").forward(req, resp);
    }
    
}
