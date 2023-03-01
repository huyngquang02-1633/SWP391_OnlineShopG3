/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import models.Author;
import models.Category;
import models.Product;
import models.Product_Manage;

/**
 *
 * @author ASUS
 */
public class CrudDAO extends DBContext{
    public ArrayList<Product_Manage> getObjectList(ResultSet rs){
        ArrayList<Product_Manage> productList = new ArrayList<>();
        try {
            while (rs.next()) {
                Product_Manage p = new Product_Manage();
                //doc du lieu tu 'rs' gan cho cac bien cuc bo
                p.setProductID( rs.getInt("ProductID"));
                p.setProductName(rs.getString("ProductName"));
                Category c = getCategoryByID(rs.getInt("CategoryID"));
                p.setCategory(c);
                p.setGenreID(rs.getInt("GenreID"));
                p.setCoverPrice(rs.getDouble("CoverPrice"));
                p.setSalePrice(rs.getDouble("SalePrice"));
                p.setAuthorID(rs.getInt("AuthorID"));
                p.setTranslator(rs.getString("Translator"));
                p.setPublisherID(rs.getInt("PublisherID"));
                p.setSupplierID(rs.getInt("SupplierID"));
                p.setLanguage(rs.getString("Language"));
                p.setSize(rs.getString("Size"));
                p.setWeight(rs.getDouble("Weight"));
                p.setNumberOfPage(rs.getInt("NumberOfPage"));
                p.setFormat(rs.getString("Format"));
                p.setImage(rs.getInt("Image"));
                p.setPublishDate(rs.getDate("PublishDate"));
                p.setPublishingLicense(rs.getString("PublishingLicense"));
                p.setDescription(rs.getString("Description"));
                p.setDiscontinued(rs.getBoolean("Discontinued"));
                productList.add(p);
                
            }
        } catch (Exception e) {
        }
        return productList;
    }
    
    
    public ArrayList<Product_Manage> getProducts(boolean isAdmin) {
        ArrayList<Product_Manage> productList = new ArrayList<>();
        try {
            String sql = "select * from Products";
            String sql2 = "select * from Products where Discontinued=?";
            PreparedStatement ps;
            if(isAdmin==true){ 
                ps= connection.prepareStatement(sql);
            }else{
                 ps= connection.prepareStatement(sql2);
                 ps.setInt(1, 0);
            }
            ResultSet rs = ps.executeQuery();
            productList = getObjectList(rs);
        } catch (Exception e) {
            
        }
        return productList;
    }
    public Category getCategoryByID(int CategoryID) {

        String sql = "select * from Categories where CategoryID=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, CategoryID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category();
                c.setCategoryID(rs.getInt("CategoryID"));
                c.setCategoryName(rs.getString("CategoryName"));
                c.setDescription(rs.getString("Description"));
                c.setPicture(rs.getString("Picture"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    
  public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();

        String sql = "select * from Categories";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category();
                c.setCategoryID(rs.getInt("CategoryID"));
                c.setCategoryName(rs.getString("CategoryName"));
                c.setDescription(rs.getString("Description"));
                c.setPicture(rs.getString("Picture"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    
    
}
  
   public List<Author> getAllAuthor() {
        List<Author> list = new ArrayList<>();

        String sql = "select * from Authors";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Author c = new Author();
                c.setAuthorID(rs.getInt("AuthorID"));
                c.setAuthorName(rs.getString("AuthorName"));
                c.setPhoneNumber(rs.getString("PhoneNumber"));
                c.setAddress(rs.getString("Address"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    
    
}
 
}
