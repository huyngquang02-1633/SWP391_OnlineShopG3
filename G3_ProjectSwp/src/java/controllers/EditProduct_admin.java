/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers;

import models.Category;
import models.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import DAL.CategoryDAO;
import DAL.ProductDAO;
import jakarta.servlet.annotation.WebServlet;

@WebServlet(name = "EditProduct_admin", urlPatterns = {"/editProduct_admin"})
public class EditProduct_admin extends HttpServlet {

    private final CategoryDAO categoryDAO = new CategoryDAO();
    private final ProductDAO productDAO = new ProductDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Product product = new ProductDAO().getProductInfor(id);
        if (product != null) {
            List<Category> categories = categoryDAO.getCategory();
            req.getSession().setAttribute("create1_edit2", 2);
            req.getSession().setAttribute("txtProductID", id);
            req.setAttribute("product", product);
            req.setAttribute("categories", categories);
            req.getRequestDispatcher("/create_product.jsp").forward(req, resp);
        } else {
            req.setAttribute("sessionMsg", "Product " + id + " is not existed");
            req.getRequestDispatcher("./productManage_admin").forward(req, resp);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int productID = (int) req.getSession().getAttribute("txtProductID");
        String productName = req.getParameter("txtProductName");
        int categoryID = Integer.parseInt(req.getParameter("ddlCategory"));
        
        boolean discontinued = !(req.getParameter("chkDiscontinued") == null);
      
    }

}
