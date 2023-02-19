/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers;

import DAL.AuthorDAO;
import models.Category;
import models.PaginationObject;
import models.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import DAL.CategoryDAO;
import DAL.ProductDAO;
import jakarta.servlet.annotation.WebServlet;
import models.Author;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "ProductListCustomer", urlPatterns = {"/productList"})
public class ProductList_Customer extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Product> productList = new ProductDAO().getProducts(false);
        ArrayList<Category> cateList = new CategoryDAO().getCategory();
        ArrayList<Author> authorList = new AuthorDAO().getAuthorList();
        
        
        req.setAttribute("productList", productList);
        req.setAttribute("cateList", cateList);
        req.setAttribute("authorList", authorList);
        req.getRequestDispatcher("/products.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
    }
    
    
    
}
