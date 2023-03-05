package controllers;

import DAL.CartDAO;
import models.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import DAL.ProductDAO;
import jakarta.servlet.annotation.WebServlet;
import java.util.Enumeration;
import javax.mail.Session;
import models.Account;
import models.CartCookies;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author user
 */
@WebServlet(name = "CartAjax", urlPatterns = {"/cartAjax"})
public class Cart extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
    }

    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        
        req.setCharacterEncoding("UTF-8");
        String txt = req.getParameter("txt");
        
        
        

    }

}
