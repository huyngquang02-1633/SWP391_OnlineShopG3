/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers;

import DAL.AuthorDAO;
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
import DAL.GenreDAO;
import DAL.ProductDAO;
import DAL.SupplierDAO;
import jakarta.servlet.annotation.WebServlet;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import models.Author;
import models.Genre;
import models.Supplier;

@WebServlet(name = "CreateProduct_admin", urlPatterns = {"/createProduct_admin"})
public class CreateProduct_admin extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//       if(req.getSession().getAttribute("AccAdminSession")==null){
//            resp.sendRedirect(req.getContextPath()+"/404error.jsp");
//            return;
//        }
        CategoryDAO cdao = new CategoryDAO();
        AuthorDAO adao = new AuthorDAO();
        SupplierDAO sdao = new SupplierDAO();
        GenreDAO gdao = new GenreDAO();

        List<Genre> listg = gdao.getGenreList();
        List<Author> lista = adao.getAuthorList();
        List<Category> listc = cdao.getCategory();
        List<Supplier> lists = sdao.getSupplierList();

        req.setAttribute("listg", listg);
        req.setAttribute("lista", lista);
        req.setAttribute("listc", listc);
        req.setAttribute("lists", lists);
        req.setAttribute("formAction", "createProduct_admin");
        req.getRequestDispatcher("create-product.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("txtProductName").replaceAll("\\s\\s+", " ").trim();
        
        int category = Integer.parseInt(req.getParameter("ddlCategory"));
        int genre = Integer.parseInt(req.getParameter("ddlGenre"));
        String cover_price_raw = req.getParameter("txtCoverPrice").replaceAll("\\s\\s+", " ").trim();
       
       String sale_price_raw = req.getParameter("txtSalePrice").replaceAll("\\s\\s+", " ").trim();
      
        int author = Integer.parseInt(req.getParameter("ddlAuthor"));
        String translator = req.getParameter("txtTranslator").replaceAll("\\s\\s+", " ").trim();
        int publisher = Integer.parseInt(req.getParameter("ddlPublisher"));
        int supplier = Integer.parseInt(req.getParameter("ddlSupplier"));
        String language = req.getParameter("txtLanguage").replaceAll("\\s\\s+", " ").trim();
        String size = req.getParameter("txtSize").replaceAll("\\s\\s+", " ").trim();
        String  weight_raw = req.getParameter("txtWeight").replaceAll("\\s\\s+", " ").trim();
        
        String page_raw = req.getParameter("txtPage").replaceAll("\\s\\s+", " ").trim();
        
        String format = req.getParameter("txtFormat").replaceAll("\\s\\s+", " ").trim();
        String img = req.getParameter("txtImg").replaceAll("\\s\\s+", " ").trim();
        String license = req.getParameter("txtLicense").replaceAll("\\s\\s+", " ").trim();
        String description = req.getParameter("txtDescription").replaceAll("\\s\\s+", " ").trim();

        boolean discon = false;
        if (req.getParameter("chkDiscontinued") != null) {
            discon = true;
        }

        String PublishDate = req.getParameter("txtPublishDate");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date date;
        try {
           
            
            if(name.isEmpty() || cover_price_raw.isEmpty() ||sale_price_raw.isEmpty()){
               resp.sendRedirect("productManage_admin"); 
            }else{
               date = sdf.parse(PublishDate);
            java.sql.Date sqlPublishDate = new java.sql.Date(date.getTime());
                 double cover_price=Double.parseDouble(cover_price_raw);
              double sale_price=Double.parseDouble(sale_price_raw);
              double weight=Double.parseDouble(weight_raw);
              int page=Integer.parseInt(page_raw);
              
            Product p = new Product(0, name, category, genre, cover_price, sale_price, author, translator,
                            publisher, supplier, language, size, weight, page, format, img, sqlPublishDate, license, description, discon);

            ProductDAO dao = new ProductDAO();
            dao.CreateProduct(p);
            resp.sendRedirect("productManage_admin");
            }
        } catch (ParseException ex) {
            Logger.getLogger(CreateProduct_admin.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
