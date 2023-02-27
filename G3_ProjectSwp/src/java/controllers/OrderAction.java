/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers;

import DAL.CartDAO;
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
        String txtPhoneNumber = req.getParameter("txtPhoneNumber");
        String txtAddress = req.getParameter("txtAddress");
        String txtCity = req.getParameter("txtCity");
        
        Account accCustomer = (Account)req.getSession().getAttribute("AccCustomerSession");
        ArrayList<Cart> cart =  new CartDAO().getCartListByAccID(accCustomer.getAccountID());
        OrderDAO odDAO = new OrderDAO();
        
        try {
            int newOrderID = odDAO.getNewOrderID();
            Order od = new Order(newOrderID, accCustomer.getCustomerID(), 1, "", txtAddress, txtCity, "", "", "Viet Nam");
            odDAO.createOrder(od);
            for (Cart item : cart) {
                OrderDetail odDetail = new OrderDetail(newOrderID, item.getProductID(), 1, 100000, item.getQuantity(), "AHJGSU");
                odDAO.createDetailOfOrder(odDetail);
            }


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

//        req.getSession().setAttribute("numberOfItemInCart", 0);
//        req.setAttribute("successMsg", "Order successfuly!");
        req.getRequestDispatcher("/viewcart.jsp").forward(req, resp);
    }

}
