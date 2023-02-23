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
import java.util.Enumeration;
import javax.mail.Session;

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

        if(req.getSession().getAttribute("AccCustomerSession")==null){
            resp.sendRedirect(req.getContextPath()+"/404error.jsp");
            return;
        }
        Enumeration<String> enumeration = req.getParameterNames();
        while (enumeration.hasMoreElements()) {
            String parameterName = (String) enumeration.nextElement();
            if (parameterName.equals("proID")) {
                req.getSession().setAttribute("mode", 1);
            }
            if (parameterName.equals("dddlCategory")) {
                req.getSession().setAttribute("mode", 2);
            }
        }
        
        if(req.getSession().getAttribute("mode") != null){
            if((int) req.getSession().getAttribute("mode") == 1){
                req.getSession().removeAttribute("mode");
                int proID = Integer.parseInt(req.getParameter("proID"));
                try {
                    CartDAO cartDAO = new CartDAO();
                    cartDAO.addToCart(new Cart(1, proID, 1));
                } catch (Exception e) {
                    req.setAttribute("addToCartFail", "add this product to cart fail!");
                }
                req.getRequestDispatcher("../productDetail").forward(req, resp);
            }
            
        }else{
            ArrayList<Cart> cartList = new CartDAO().getCartListByAccID(1);
            ArrayList<Product> productList = new ProductDAO().getProducts(false);
            
            req.setAttribute("cartList", cartList);
            req.setAttribute("productList", productList);
            req.getRequestDispatcher("/viewcart.jsp").forward(req, resp);
        }

    }

}
