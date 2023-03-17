/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import DAL.OrderDAO;
import DAL.ReviewDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import models.Account;
import models.Order;
import models.OrderDetail;
import models.Review;

/**
 *
 * @author ADMIN
 */
@MultipartConfig
@WebServlet(name = "AccountProfile2_review", urlPatterns = {"/AccountProfile2_review"})
public class AccountProfile2_review extends HttpServlet {

    /**
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if(req.getSession().getAttribute("AccCustomerSession")==null){
            resp.sendRedirect(req.getContextPath()+"/404error.jsp");
            return;
        }
        Account accCustomer = (Account)req.getSession().getAttribute("AccCustomerSession");
        int orderID = Integer.parseInt(req.getParameter("id"));
//        PrintWriter a = resp.getWriter();
//        a.print(orderID);
        
        
        Order order = new OrderDAO().getOrderByID(orderID);
        ArrayList<OrderDetail> orderDetailList = new OrderDAO().getDetailOfOrderByCusID(accCustomer.getCustomerID());
        
        req.setAttribute("order", order);
        req.setAttribute("orderDetailList", orderDetailList);
        req.getRequestDispatcher("/profile_order_review.jsp").forward(req, resp);
    }

    private static final long serialVersionUID = 1L;
    
    private static final String UPLOAD_DIR = "uploads";
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        if(req.getSession().getAttribute("AccCustomerSession")==null){
            resp.sendRedirect(req.getContextPath()+"/404error.jsp");
            return;
        }
        Account accCustomer = (Account)req.getSession().getAttribute("AccCustomerSession");
        
        int rating = Integer.parseInt(req.getParameter("rate"));
        String comment = req.getParameter("txtComment");
        int orderID = Integer.parseInt(req.getParameter("orderID"));
        int productID = Integer.parseInt(req.getParameter("productID"));
        
        try {
            Part filePart  = req.getPart("chooseFile");
            String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        
            // Set the destination directory for the uploaded file
            String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIR;
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }

            // Copy the file to the destination directory
            InputStream inputStream = filePart.getInputStream();
                Files.copy(inputStream, Paths.get(uploadPath + File.separator + fileName), StandardCopyOption.REPLACE_EXISTING);

            // Show a message to the user
            resp.getWriter().println("Image uploaded successfully! \n");
            resp.getWriter().println(fileName +"\n");
            resp.getWriter().println(rating);
            resp.getWriter().println(comment +"\n");
            Review newReview = new Review(accCustomer.getCustomerID(), orderID, productID, rating, comment, fileName);
            boolean isreviewed = new ReviewDAO().createReview(newReview);
            req.getRequestDispatcher("/AccountProfile2_review?id="+orderID).forward(req, resp);
        } catch (Exception e) {
        }



    }
    
    
}
