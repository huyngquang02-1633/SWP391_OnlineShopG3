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
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.InputStream;
import static java.lang.System.out;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import models.Author;
import models.Genre;
import models.Supplier;

@MultipartConfig
@WebServlet(name = "EditProduct_admin", urlPatterns = {"/editProduct_admin"})
public class EditProduct_admin extends HttpServlet {

    private static final long serialVersionUID = 1L;
    
    private static final String UPLOAD_DIR = "uploads";
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
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

        int id = Integer.parseInt(req.getParameter("id"));
        Product product = new ProductDAO().getProductInfor(id);
        req.setAttribute("p", product);
        req.setAttribute("formAction", "editProduct_admin");

        req.getRequestDispatcher("create-product.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        int id = Integer.parseInt(req.getParameter("pid"));
         String name = req.getParameter("txtProductName").replaceAll("\\s\\s+", " ").trim();
        
        int category = Integer.parseInt(req.getParameter("ddlCategory"));
        int genre = Integer.parseInt(req.getParameter("ddlGenre"));
        String cover_price_raw = req.getParameter("txtCoverPrice");
       
       String sale_price_raw = req.getParameter("txtSalePrice");
      
        int author = Integer.parseInt(req.getParameter("ddlAuthor"));
        String translator = req.getParameter("txtTranslator").replaceAll("\\s\\s+", " ").trim();
        int publisher = Integer.parseInt(req.getParameter("ddlPublisher"));
        int supplier = Integer.parseInt(req.getParameter("ddlSupplier"));
        String language = req.getParameter("txtLanguage").replaceAll("\\s\\s+", " ").trim();
        String size = req.getParameter("txtSize").replaceAll("\\s\\s+", " ").trim();
        String  weight_raw = req.getParameter("txtWeight").replaceAll("\\s\\s+", " ").trim();
        
        String page_raw = req.getParameter("txtPage").replaceAll("\\s\\s+", " ").trim();
        
        String format = req.getParameter("txtFormat").replaceAll("\\s\\s+", " ").trim();
        String img ="";
        String license = req.getParameter("txtLicense").replaceAll("\\s\\s+", " ").trim();
        String description = req.getParameter("txtDescription").replaceAll("\\s\\s+", " ").trim();


        boolean discon = false;
        if (req.getParameter("chkDiscontinued") != null) {
            discon = true;
        }

        
        try {
            Part filePart  = req.getPart("file");
            String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
            img = fileName;
            String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIR;
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }
            InputStream inputStream = filePart.getInputStream();
            Files.copy(inputStream, Paths.get(uploadPath + File.separator + fileName), StandardCopyOption.REPLACE_EXISTING);

        } catch (Exception e) {
        }
        
        
        String PublishDate = req.getParameter("txtPublishDate");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date date;
        try {
            
            
           if(name.isEmpty() || cover_price_raw.isEmpty() ||sale_price_raw.isEmpty()){
               req.setAttribute("ms", "fail");
               resp.sendRedirect("productManage_admin");
            }else{
                
                 date = sdf.parse(PublishDate);
            java.sql.Date sqlPublishDate = new java.sql.Date(date.getTime());
                 double cover_price=Double.parseDouble(cover_price_raw);
              double sale_price=Double.parseDouble(sale_price_raw);
              double weight=Double.parseDouble(weight_raw);
              int page=Integer.parseInt(page_raw);
              
            
            
            Product p = new Product(id, name, category, genre, cover_price, sale_price, author, translator,
                    publisher, supplier, language, size, weight, page, format, img, sqlPublishDate, license, description, discon);

            ProductDAO dao = new ProductDAO();
            dao.update(p);
            resp.sendRedirect("productManage_admin");
                
            }
        } catch (SQLException | ParseException ex) {
            Logger.getLogger(EditProduct_admin.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
