package controllers;

import DAL.CartDAO;
import models.Cart;
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
@WebServlet(name = "CartController", urlPatterns = {"/account/cart"})
public class CartController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        Enumeration<String> enumeration = req.getParameterNames();
        while (enumeration.hasMoreElements()) {
            String parameterName = (String) enumeration.nextElement();
            if (parameterName.equals("proID")) {
                req.getSession().setAttribute("mode", 1);
            }
        }
        
        if(req.getSession().getAttribute("AccCustomerSession")!=null){
            Account accCustomer = (Account)req.getSession().getAttribute("AccCustomerSession");
            if(req.getSession().getAttribute("mode") != null){
                if((int) req.getSession().getAttribute("mode") == 1){
                    req.getSession().removeAttribute("mode");
                    int proID = Integer.parseInt(req.getParameter("proID"));
                    //int quantity = Integer.parseInt(req.getParameter("quantity"));
                    try {
                        CartDAO cartDAO = new CartDAO();
                        cartDAO.addToCart(new Cart(accCustomer.getAccountID(), proID, 1));
                    } catch (Exception e) {
                        req.setAttribute("addToCartFail", "add this product to cart fail!");
                    }
                    resp.sendRedirect(req.getParameter("previousURL"));
                    //req.getRequestDispatcher(req.getParameter("previousURL")).forward(req, resp);
                }

            }else{
                ArrayList<Cart> cartList = new CartDAO().getCartListByAccID(accCustomer.getAccountID());
                ArrayList<Product> productList = new ProductDAO().getProducts(false);

                req.setAttribute("cartList", cartList);
                req.setAttribute("productList", productList);
                req.getRequestDispatcher("/viewcart.jsp").forward(req, resp);
            }
        }else{
            Cookie arr[] = req.getCookies();
            ArrayList<String> cookiesText = new ArrayList<>();
            if (arr != null) {
                for (Cookie arrCookies : arr) {
                    if (arrCookies.getName().contains("item")) {
                        cookiesText.add(arrCookies.getValue());
                    }
                }
            }
            CartCookies cartCookies = new CartCookies();
            ArrayList<Cart> cartList = cartCookies.decryptionCookiesText(cookiesText);
            
            
            if(req.getSession().getAttribute("mode") != null){
                if((int) req.getSession().getAttribute("mode") == 1){
                    req.getSession().removeAttribute("mode");
                    int proID = Integer.parseInt(req.getParameter("proID"));
//                    int quantity = cartCookies.getQuantityByID(Integer.parseInt(req.getParameter("proID")));
//                    int index = -1;
                    if (cartCookies.isProductInCartCookies(proID)) { //sp da co trong cookie
        //                if (arr != null) {
        //                    for (Cookie arrCookie : arr) {
        //                        if (arrCookie.getName().equals("item" + proID)) {
        //                            index++;
        //                            arrCookie.setValue(proID + "-" + quantity);
        //                            resp.addCookie(arrCookie);
        //                            for (int i = 0; i < items.size(); i++) {
        //                                if (items.get(i).getProduct().getProductID() == proID) {
        //                                    items.remove(items.get(i));
        //                                    items.add(i, new Item(new ProductDAO().getProductInfor(proID), quantity));
        //                                }
        //                            }
        //                            
        //
        //                        }
        //                    }
        //                }

                    } else { //sp chua co trong cookie
                        Cookie c = new Cookie("item" + proID, proID + "-1");
                        c.setMaxAge(60 * 60 * 24 * 30);
                        resp.addCookie(c);
                        cartList.add(new Cart(proID, 1));
                    }
                    resp.sendRedirect(req.getParameter("previousURL"));
                    
                }
            //Chua dang nhap, view cart
            }else{ 
                ArrayList<Product> productList = new ProductDAO().getProducts(false);
                req.setAttribute("cartList", cartList);
                req.setAttribute("productList", productList);
                
                req.getRequestDispatcher("/viewcart.jsp").forward(req, resp);
            }
        }
        
        
        

    }

}
