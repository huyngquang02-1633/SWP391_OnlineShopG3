/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers;

import DAL.CategoryDAO;
import models.Account;
import models.Cart;
import models.Customer;
import models.Item;
import models.Order;
import models.OrderDetail;
import models.SendMail;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
import DAL.CustomerDAO;
import DAL.OrderDAO;
import DAL.ProductDAO;
import models.Category;
import models.Product;
@WebServlet(name = "HomePage", urlPatterns = {"/homepage"})
public class HomePage extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Product> productList = new ProductDAO().getProducts(false);
        ArrayList<Category> cateList = new CategoryDAO().getCategory();
        req.setAttribute("productList", productList);
        req.setAttribute("cateList", cateList);
        req.getRequestDispatcher("index.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
    }

}

