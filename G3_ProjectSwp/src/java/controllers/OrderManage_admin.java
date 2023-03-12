/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers;

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
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import DAL.CustomerDAO;
import DAL.EmployeeDAO;
import DAL.OrderDAO;
import DAL.ProductDAO;

/**
 *
 * @author user
 */
@WebServlet(name = "OrderManage_admin", urlPatterns = {"/orderManage_admin"})
    public class OrderManage_admin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//        if(req.getSession().getAttribute("AccAdminSession")==null){
//            resp.sendRedirect(req.getContextPath()+"/404error.jsp");
//            return;
//        }

        PaginationObject paging = new PaginationObject();
        int currentPage = 1;
        if (req.getParameter("currentPage") != null) {
            currentPage = Integer.parseInt(req.getParameter("currentPage"));
        }

        ArrayList<Order> orderList = new OrderDAO().getAllOrders();
        ArrayList<Customer> cusList = new CustomerDAO().getAllCustomers();
        ArrayList<Employee> empList = null;
        try {
            empList = new EmployeeDAO().getAllEmloyees();
        } catch (SQLException ex) {
            Logger.getLogger(OrderManage_admin.class.getName()).log(Level.SEVERE, null, ex);
        }

        req.setAttribute("cusList", cusList);
        req.setAttribute("empList", empList);

        Enumeration<String> enumeration = req.getParameterNames();
        while (enumeration.hasMoreElements()) {
            String parameterName = (String) enumeration.nextElement();
            if (parameterName.equals("txtStartOrderDate")) {
                req.getSession().setAttribute("mode", 1);
            }
            if (parameterName.equals("txtEndOrderDate")) {
                req.getSession().setAttribute("mode", 1);
            }
            if (parameterName.equals("idOdDetail")) {
                req.getSession().setAttribute("mode", 2);
            }
            if (parameterName.equals("idCancel")) {
                req.getSession().setAttribute("mode", 3);
            }
        }

        if (req.getSession().getAttribute("mode") != null) {
            switch ((int) req.getSession().getAttribute("mode")) {
                case 1:
                    String fromDate = req.getParameter("txtStartOrderDate");
                    String toDate = req.getParameter("txtEndOrderDate");
                    if (fromDate.isEmpty() && toDate.isEmpty()) {
                        //req.getSession().removeAttribute("mode");
                        orderList = new OrderDAO().getAllOrders();
                    } else {
                        orderList = new OrderDAO().getOrderInRange(fromDate, toDate);
                    }
                    req.getSession().setAttribute("txtEndOrderDate", req.getParameter("txtEndOrderDate"));
                    req.getSession().setAttribute("txtStartOrderDate", req.getParameter("txtStartOrderDate"));
                    break;
                case 2:
                    int idOdDetail = Integer.parseInt(req.getParameter("idOdDetail"));
                    Order order = new OrderDAO().getOrderByID(idOdDetail);
                    ArrayList<OrderDetail> odDetailList = new OrderDAO().getDetailOfOrderByOdID(idOdDetail);
                    ArrayList<Product> proList = new ProductDAO().getProducts(true);
                    req.setAttribute("productList", proList);
                    req.setAttribute("order", order);
                    req.setAttribute("orderDetailList", odDetailList);
                    req.getRequestDispatcher("order-detail.jsp").forward(req, resp);
                    return;
                    //break;
                case 3:
                    int idCancel = Integer.parseInt(req.getParameter("idCancel"));
                    try {
                        new OrderDAO().cancelOrder(idCancel);

                        for (int i = 0; i < orderList.size(); i++) {
                            if (orderList.get(i).getOrderID() == idCancel) {
                                orderList.get(i).setRequiredDate(null);
                            }
                        }
                        req.setAttribute("CancelMsg", "Cancel successfull!");
                    } catch (SQLException ex) {
                        Logger.getLogger(EditProduct_admin.class.getName()).log(Level.SEVERE, null, ex);
                        req.setAttribute("CancelMsg", "Cancel order fail");

                        return;
                    }
                    break;

                default:
                    break;
            }

        } else {
            orderList = new OrderDAO().getAllOrders();
            if (req.getSession().getAttribute("orderList") != null) {
                orderList = (ArrayList<Order>) req.getSession().getAttribute("orderList");
            }
        }
        req.getSession().removeAttribute("mode");

        if (orderList.isEmpty()) {
            req.setAttribute("emptyListMsg", "There is nothing in Order List, Let's order some thing!");
        }
        List<Order> listInCurrentPage = paging.getListInCurrentPage(orderList, currentPage);

        int numberOfPage = paging.getNumberOfPage(orderList);
        req.setAttribute("numberOfPage", numberOfPage);

        req.getSession().setAttribute("currentPage", currentPage);
        req.getSession().setAttribute("orderList", orderList);
        req.setAttribute("listInCurrentPage", listInCurrentPage);


        //if(req.getSession().getAttribute("AccAdminSession")==null){
            //resp.sendRedirect(req.getContextPath()+"/404error.jsp");
            //return;
        //}
        //OrderDAO dao = new OrderDAO();
        //ArrayList<Order> ArrayList = dao.getAllOrders();
        //req.setAttribute("listOrder", ArrayList);

        req.getRequestDispatcher("order.jsp").forward(req, resp);
    }

}
