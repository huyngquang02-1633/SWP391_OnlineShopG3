package controllers;

import DAL.CartDAO;
import models.Cart;
import models.Item;
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

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author user
 */
@WebServlet(name = "CartController", urlPatterns = {"/account/cart"})
public class CartController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int proID = Integer.parseInt(req.getParameter("proID"));
        try {
            CartDAO cartDAO = new CartDAO();
            cartDAO.addToCart(new Cart(1, proID, 4));
        } catch (Exception e) {
            req.setAttribute("addToCartFail", "add this product to cart fail!");
        }
        req.getRequestDispatcher("../productDetail").forward(req, resp);
    }

}
