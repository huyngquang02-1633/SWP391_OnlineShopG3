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
import DAL.GenreDAO;
import DAL.ProductDAO;
import jakarta.servlet.annotation.WebServlet;
import models.Author;
import models.Genre;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "ProductListCustomer", urlPatterns = {"/productList"})
public class ProductList_Customer extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        Enumeration<String> enumeration = req.getParameterNames();
        while (enumeration.hasMoreElements()) {
            String parameterName = (String) enumeration.nextElement();
            if (parameterName.equals("categoryID")) {
                req.getSession().setAttribute("mode", 1);
            }
            if (parameterName.equals("genreID")) {
                req.getSession().setAttribute("mode", 4);
            }
            if (parameterName.equals("newRelease")) {
                req.getSession().setAttribute("mode", 2);
            }
            if (parameterName.equals("authorID")) {
                req.getSession().setAttribute("mode", 3);
            }
            
        }
        
        ArrayList<Product> productList = null;
        ArrayList<Category> cateList = new CategoryDAO().getCategory();
        ArrayList<Genre> genreList = new GenreDAO().getGenreList();
        ArrayList<Author> authorList = new AuthorDAO().getAuthorList();
        if(req.getSession().getAttribute("mode") != null){
            if((int) req.getSession().getAttribute("mode") == 1){
                int cateID = Integer.parseInt(req.getParameter("categoryID"));
                productList = new ProductDAO().getProductListByCategoryID(cateID);
            }
            
            if((int) req.getSession().getAttribute("mode") == 2){
                productList = new ProductDAO().getNewReleaseList(0);
            }
            if((int) req.getSession().getAttribute("mode") == 3){
                int authorID = Integer.parseInt(req.getParameter("authorID"));
                productList = new ProductDAO().getProductByAuthorID(authorID);
            }
            if((int) req.getSession().getAttribute("mode") == 4){
                int genreID = Integer.parseInt(req.getParameter("genreID"));
                productList = new ProductDAO().getProductListByGenreID(genreID);
            }

        }else{
            productList = new ProductDAO().getProducts(false);
            
        }
        req.getSession().removeAttribute("mode");
        req.setAttribute("productList", productList);
        req.setAttribute("cateList", cateList);
        req.setAttribute("genreList", genreList);
        req.setAttribute("authorList", authorList);
        req.getRequestDispatcher("/products.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String txtSearch = req.getParameter("txtSearch");
        ArrayList<Product> productList = new ProductDAO().getProductbySearch(txtSearch);
        ArrayList<Category> cateList = new CategoryDAO().getCategory();
        ArrayList<Genre> genreList = new GenreDAO().getGenreList();
        ArrayList<Author> authorList = new AuthorDAO().getAuthorList();
        
        req.setAttribute("productList", productList);
        req.setAttribute("cateList", cateList);
        req.setAttribute("genreList", genreList);
        req.setAttribute("authorList", authorList);
        req.getRequestDispatcher("/products.jsp").forward(req, resp);
        
    }
    
    
    
}
