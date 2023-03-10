/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers;

import DAL.AccountDAO;
import DAL.CartDAO;
import models.Account;
import models.Cart;
import models.Customer;
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
import models.CartCookies;
import models.Discount;
import models.Product;

/**
 *
 * @author user
 */
@WebServlet(name = "OrderAction", urlPatterns = {"/orderAction"})
public class OrderAction extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String txtReceiver = req.getParameter("txtReceiver").trim();
        String txtEmail = req.getParameter("txtEmail").trim();
        String txtPhoneNumber = req.getParameter("txtPhoneNumber").trim();
        String txtAddress = req.getParameter("txtAddress").trim();
        String txtCity = req.getParameter("txtShipCity").trim();
        String txtDiscountID = req.getParameter("txtDiscountID").trim();
        
        Account accCustomer = (Account)req.getSession().getAttribute("AccCustomerSession");
        if(accCustomer !=null){
            ArrayList<Cart> cart =  new CartDAO().getCartListByAccID(accCustomer.getAccountID());
            OrderDAO odDAO = new OrderDAO();
            ProductDAO proDAO = new ProductDAO();
            for (Cart cart1 : cart) {
                if(cart1.getQuantity() > proDAO.getAvailableInStock(cart1.getProductID())){
                    req.setAttribute("msgOutOfStock", "One of these products is not enough in the warehouse, please change the quantity!");
                    req.getRequestDispatcher("/account/cart").forward(req, resp);
                    return;
                }
            }
            Discount discount = odDAO.getVoucher(txtDiscountID);
            if(discount==null){
                req.setAttribute("msgWrongDiscountID", "This voucher dooesn't exists in our system!");
                req.getRequestDispatcher(req.getContextPath()+"/account/cart").forward(req, resp);
                return;
            }
            try {
                int newOrderID = odDAO.getNewOrderID();
                Order od = new Order(newOrderID, accCustomer.getCustomerID(), 1, "shipperName", txtAddress, txtCity, "region", "2345", "Viet Nam",1);
                odDAO.createOrderInDB(od, accCustomer.getAccountID(), txtDiscountID);
//                odDAO.createOrder(od);
//                
//                Discount discount = odDAO.getVoucher(txtDiscountID);
//                for (Cart item : cart) {
//                    
//                    Product proInfor;
//                    String voucher="";
//                    double discountAmount=0;
//                    proInfor = proDAO.getProductInfor(item.getProductID());
//                    if(discount!=null){
//                        voucher = discount.getDiscountID();
//                        discountAmount = item.getQuantity()*proInfor.getSalePrice() - proInfor.getSalePrice()*discount.getPercentage();
//                    }
//                    OrderDetail odDetail = new OrderDetail(newOrderID, item.getProductID(), 1, discountAmount, item.getQuantity(), voucher);
//                    odDAO.createDetailOfOrder(odDetail);
//                }
                SendMail sendMail = new SendMail();
                String subjectContent = "Your order " + newOrderID + " has been confirmed!";
                String emailContent = "Shopee is preparing your order!\nOrder detail: .......";
                try {
                    sendMail.sendAnnounce("vuvu15202@gmail.com", subjectContent, emailContent);
                } catch (MessagingException ex) {
                    Logger.getLogger(OrderAction.class.getName()).log(Level.SEVERE, null, ex);
                }

            } catch (SQLException ex) {
                Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            resp.sendRedirect(req.getContextPath()+"/account/cart");
        }else{
            
            Cookie arr[] = req.getCookies();
            ArrayList<String> cookiesText = new ArrayList<>();
            if (arr != null) {
                for (Cookie arrCookies : arr) {
                    if (arrCookies.getName().contains("item")) {
                        cookiesText.add(arrCookies.getValue());
                        arrCookies.setMaxAge(0);
                        resp.addCookie(arrCookies);
                    }
                }
            }
            CartCookies cartCookies = new CartCookies();
            ArrayList<Cart> cartList = cartCookies.decryptionCookiesText(cookiesText);
            
            
            AccountDAO accDAO = new AccountDAO();
            if(accDAO.getAccountByEmail(txtEmail)==null){
                try {
                    Account acc = new Account(0, txtEmail, "", 0, 0, 2, true);
                    Customer cus = new Customer(0, "", "",txtReceiver,txtAddress,txtPhoneNumber);
                    accDAO.createAccount(cus, acc);

                } catch (Exception e) {

                }
            }
            
            Account AccCustomer = accDAO.getAccountByEmail(txtEmail);
            req.getSession().setAttribute("AccCustomerSession", AccCustomer);
            
            
            try {
                OrderDAO odDAO = new OrderDAO();
                ProductDAO proDAO = new ProductDAO();
                Discount discount = odDAO.getVoucher(txtDiscountID);
                int newOrderID = odDAO.getNewOrderID();
                
                if(discount==null){
                    req.setAttribute("msgWrongDiscountID", "This voucher dooesn't exists in our system!");
                    req.getRequestDispatcher(req.getContextPath()+"/account/cart").forward(req, resp);
                    return;
                }
            
                Order od = new Order(newOrderID, AccCustomer.getCustomerID(), 1, txtReceiver, txtAddress, txtCity, "", "", "Viet Nam",1);
                odDAO.createOrder(od);
                for (Cart item : cartList) {
                    Product proInfor;
                    String voucher="";
                    double discountAmount=0;
                    proInfor = proDAO.getProductInfor(item.getProductID());
                    if(discount!=null){
                        voucher = discount.getDiscountID();
                        discountAmount = proInfor.getSalePrice() - proInfor.getSalePrice()*discount.getPercentage();
                    }
                    OrderDetail odDetail = new OrderDetail(newOrderID, item.getProductID(),1,discountAmount, item.getQuantity(), voucher );
                    odDAO.createDetailOfOrder(odDetail);
                }

                SendMail sendMail = new SendMail();
                String subjectContent = "Your order " + newOrderID + " has been confirmed!";
                String emailContent = "Shopee is preparing your order!\nOrder detail: .......";
                if(req.getSession().getAttribute("AccSession")!=null){
                    sendMail.sendAnnounce(txtEmail, subjectContent, emailContent);
                }

            } catch (SQLException ex) {
                Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
            } catch (MessagingException ex) {
                Logger.getLogger(OrderAction.class.getName()).log(Level.SEVERE, null, ex);
            }
            resp.sendRedirect(req.getContextPath()+"/account/cart");

        }
        
    }

}
