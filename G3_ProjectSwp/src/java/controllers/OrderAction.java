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
        String txtReceiver = req.getParameter("txtReceiver");
        String txtEmail = req.getParameter("txtEmail");
        String txtPhoneNumber = req.getParameter("txtPhoneNumber");
        String txtAddress = req.getParameter("txtAddress");
        String txtCity = req.getParameter("txtCity");
        String txtDiscountID = req.getParameter("txtDiscountId");
        
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
            try {
                int newOrderID = odDAO.getNewOrderID();
                Order od = new Order(newOrderID, accCustomer.getCustomerID(), 1, "shipperName", txtAddress, txtCity, "region", "2345", "Viet Nam");
                odDAO.createOrderInDB(od, accCustomer.getAccountID(), txtDiscountID);
//                for (Cart item : cart) {
//                    OrderDetail odDetail = new OrderDetail(newOrderID, item.getProductID(), 1, 100000, item.getQuantity(), "AHJGSU");
//                    odDAO.createDetailOfOrder(odDetail);
//                }


                SendMail sendMail = new SendMail();
                String subjectContent = "Your order " + newOrderID + " has been confirmed!";
                String emailContent = "Shopee is preparing your order!\nOrder detail: .......";
                sendMail.sendAnnounce("vuvu15202@gmail.com", subjectContent, emailContent);

            } catch (SQLException ex) {
                Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
            } 
            catch (MessagingException ex) {
                Logger.getLogger(OrderAction.class.getName()).log(Level.SEVERE, null, ex);
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
                    Account acc = new Account(0, txtEmail, "", 0, 0, 2);
                    Customer cus = new Customer(0, "", "",txtReceiver,txtAddress,txtPhoneNumber);
                    accDAO.createAccount(cus, acc);

                } catch (Exception e) {

                }
            }
            
            Account AccCustomer = accDAO.getAccountByEmail(txtEmail);
            req.getSession().setAttribute("AccCustomerSession", AccCustomer);

            try {
                OrderDAO odDAO = new OrderDAO();
                int newOrderID = odDAO.getNewOrderID();
                Order od = new Order(newOrderID, AccCustomer.getCustomerID(), 1, txtReceiver, txtAddress, txtCity, "", "", "Viet Nam");
                odDAO.createOrder(od);
                for (Cart item : cartList) {
                    OrderDetail odDetail = new OrderDetail(newOrderID, item.getProductID(),1,100000, item.getQuantity(), "" );
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
