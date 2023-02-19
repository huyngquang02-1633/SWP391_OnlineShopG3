 /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import models.Product;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author ADMIN
 */
public class ProductDAO extends DBContext{
    public Product getObject(ResultSet rs){
        Product product = null;
        try {
            while (rs.next()) { 
                int ProductID = rs.getInt("ProductID");
                String ProductName = rs.getString("ProductName");
                int CategoryID = rs.getInt("CategoryID");
                int GenreID = rs.getInt("GenreID");
                double CoverPrice = rs.getDouble("CoverPrice");
                double SalePrice = rs.getDouble("SalePrice");
                int AuthorID = rs.getInt("AuthorID");
                String Translator = rs.getString("Translator");
                int PublisherID = rs.getInt("PublisherID");
                int SupplierID = rs.getInt("SupplierID");
                String Language = rs.getString("Language");
                String Size = rs.getString("Size");
                double Weight = rs.getDouble("Weight");
                int NumberOfPage = rs.getInt("NumberOfPage");
                String Format = rs.getString("Format");
                int Image = rs.getInt("Image");
                Date PublishDate = rs.getDate("PublishDate");
                String PublishingLicense = rs.getString("PublishingLicense");
                String Description = rs.getString("Description");
                boolean Discontinued = rs.getBoolean("Discontinued");
                product = new Product(ProductID, ProductName, CategoryID, GenreID, CoverPrice, SalePrice, AuthorID, Translator, PublisherID, SupplierID, Language, Size, Weight, NumberOfPage, Format, Image, PublishDate, PublishingLicense, Description, Discontinued);
            }
        } catch (Exception e) {
        }
        return product;
    }
    public ArrayList<Product> getObjectList(ResultSet rs){
        ArrayList<Product> productList = new ArrayList<>();
        try {
            while (rs.next()) {
                //doc du lieu tu 'rs' gan cho cac bien cuc bo
                int ProductID = rs.getInt("ProductID");
                String ProductName = rs.getString("ProductName");
                int CategoryID = rs.getInt("CategoryID");
                int GenreID = rs.getInt("GenreID");
                double CoverPrice = rs.getDouble("CoverPrice");
                double SalePrice = rs.getDouble("SalePrice");
                int AuthorID = rs.getInt("AuthorID");
                String Translator = rs.getString("Translator");
                int PublisherID = rs.getInt("PublisherID");
                int SupplierID = rs.getInt("SupplierID");
                String Language = rs.getString("Language");
                String Size = rs.getString("Size");
                double Weight = rs.getDouble("Weight");
                int NumberOfPage = rs.getInt("NumberOfPage");
                String Format = rs.getString("Format");
                int Image = rs.getInt("Image");
                Date PublishDate = rs.getDate("PublishDate");
                String PublishingLicense = rs.getString("PublishingLicense");
                String Description = rs.getString("Description");
                boolean Discontinued = rs.getBoolean("Discontinued");
                productList.add(new Product(ProductID, ProductName, CategoryID, GenreID, CoverPrice, SalePrice, AuthorID,
                        Translator, PublisherID, SupplierID, Language, Size, Weight, NumberOfPage, Format, 
                        Image, PublishDate, PublishingLicense, Description, Discontinued));
            }
        } catch (Exception e) {
        }
        return productList;
    }
    public ArrayList<Product> getProducts(boolean isAdmin) {
        ArrayList<Product> productList = new ArrayList<>();
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
    
    public ArrayList<Product> getProductsByCatNSearch(String sample,int CatID,boolean isAdmin) {
        ArrayList<Product> productList = new ArrayList<>();
        try {
            String sql = "select * from Products where CategoryID=? AND ProductName like ?";
            String sql2 = "select * from Products where CategoryID=? AND ProductName like ? AND Discontinued=?";
            PreparedStatement ps;
            if(isAdmin==true){ 
                ps= connection.prepareStatement(sql);
                ps.setInt(1, CatID);
                ps.setString(2, "%"+sample+"%");
            }else{
                ps= connection.prepareStatement(sql2);
                ps.setInt(1, CatID);
                ps.setString(2, "%"+sample+"%");
                ps.setInt(3, 0);
            }
            ResultSet rs = ps.executeQuery();
            productList = getObjectList(rs);
        } catch (Exception e) {
            
        }
        return productList;
    }
    
    public ArrayList<Product> getHotProduct() {
        ArrayList<Product> productList = new ArrayList<>();
        try {
            String sql = "select top 4 * from (select COUNT(OrderID) as numberOrder, ProductID from [Order Details] \n" +
"group by ProductID) as A inner join Products on A.ProductID=Products.ProductID ORDER BY numberOrder DESC";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            productList = getObjectList(rs);
        } catch (Exception e) {
            
        }
        return productList;
    }
    
    public Product getProductInfor(int proID) {
        Product product = null; 
        try {
            String sql = "select * from Products where ProductID = ? "; 
            PreparedStatement ps = connection.prepareStatement(sql); 
            ps.setInt(1, proID);  
            ResultSet rs = ps.executeQuery();  
            product = getObject(rs);
        } catch (Exception e) {
        }
        return product;
    }
    
    public Product checkProExistInOrder(int proID) {
        Product product = null; 
        try {
            String sql = "select DISTINCT * from Products p, [Order Details] od where p.ProductID=od.ProductID AND p.ProductID=?"; 
            PreparedStatement ps = connection.prepareStatement(sql); 
            ps.setInt(1, proID);  
            ResultSet rs = ps.executeQuery();  
            product = getObject(rs);
        } catch (Exception e) {
        }
        return product;
    }
   
    
    public ArrayList<Product> getProductbySearch(String sample) {
        ArrayList<Product> productList = new ArrayList<>();
        try {
            String sql = "select * from Products where ProductName like ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%"+sample+"%");
            ResultSet rs = ps.executeQuery();
            productList = getObjectList(rs);
        } catch (Exception e) {
            
        }// finally{connection.close();}
        return productList;
    }
    public ArrayList<Product> getProductListByCategoryID(int catID) {
        ArrayList<Product> productList = new ArrayList<>();
        try {
            String sql = "select * from Products where CategoryID=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, catID);
            ResultSet rs = ps.executeQuery();
            productList = getObjectList(rs);
        } catch (Exception e) {
            
        }// finally{connection.close();}
        return productList;
    }
    
    public void update(Product p) throws SQLException {
        try {
            //connection = DBContext.getInstance().getConnection();
            
            String sql = "update Products SET "
                    + "ProductName = ?, "
                    + "CategoryID = ?, "
                    + "GenreID = ?, "
                    + "CoverPrice = ?, "
                    + "SalePrice = ?, "
                    + "AuthorID = ?, "
                    + "Translator = ?, "
                    + "PublisherID = ?, "
                    + "SupplierID = ?, "
                    + "Language = ?, "
                    + "Size = ?, "
                    + "Weight = ?, "
                    + "NumerOfPage = ?, "
                    + "Format = ?, "
                    + "Image = ?, "
                    + "PublishDate = ?, "
                    + "PublishingLicense = ?, "
                    + "Description = ?, "
                    + "Discontinued = ? "
                    + "where ProductID = ?";

            PreparedStatement ps = connection.prepareStatement(sql); 
            ps.setString(1, p.getProductName());
            ps.setInt(2, p.getCategoryID());
            ps.setInt(3, p.getGenreID());
            ps.setDouble(5, p.getCoverPrice());
            ps.setDouble(6, p.getSalePrice());
            ps.setInt(7, p.getAuthorID());
            ps.setString(8, p.getTranslator());
            ps.setInt(9, p.getPublisherID());
            ps.setInt(10, p.getSupplierID());
            ps.setString(11, p.getLanguage());
            ps.setString(12, p.getSize());
            ps.setDouble(13, p.getWeight());
            ps.setInt(14, p.getNumberOfPage());
            ps.setString(15, p.getFormat());
            ps.setInt(16, p.getImage());
            ps.setDate(17, p.getPublishDate());
            ps.setString(18, p.getPublishingLicense());
            ps.setString(19, p.getDescription());
            ps.setBoolean(20, p.isDiscontinued());
            ps.executeUpdate();
        } catch (SQLException e) {
            connection.rollback();
        } finally {
            //DBContext.releaseJBDCObject(rs, ps, connection);
        }
    }
    
    public int Delete(int ID) throws SQLException {
        int result=0;
        String sql1 = "DELETE FROM Products WHERE ProductID = ?";
        //String sql2 = "delete from [Order Details] where ProductID = ?";
        try {
            //connection = DBContext.getInstance().getConnection();
            PreparedStatement ps1 = connection.prepareStatement(sql1); 
            //PreparedStatement ps2 = connection.prepareStatement(sql2); 
            ps1.setInt(1, ID);
            //ps2.setInt(1, ID);
            result=ps1.executeUpdate();
            //ps2.executeUpdate();
        } catch (SQLException e) {
            connection.rollback();
        } finally {
            //DBContext.releaseJBDCObject(rs, ps, connection);
        }
        return result>0?1:0;
    }
    public void CreateProduct(Product p) throws SQLException {
        String sql = "insert into Products("
                + "ProductName,"
                + "CategoryID,"
                + "GenreID,"
                + "CoverPrice,"
                + "SalePrice,"
                + "AuthorID,"
                + "Translator,"
                + "PublisherID,"
                + "SupplierID,"
                + "Language,"
                + "Size,"
                + "Weight,"
                + "NumerOfPage,"
                + "Format,"
                + "Image,"
                + "PublishDate,"
                + "PublishingLicense,"
                + "Description,"
                + "Discontinued,"
                + "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try {            
            //connection = DBContext.getInstance().getConnection();
            PreparedStatement ps = connection.prepareStatement(sql); 
            ps.setString(1, p.getProductName());
            ps.setInt(2, p.getCategoryID());
            ps.setInt(3, p.getGenreID());
            ps.setDouble(5, p.getCoverPrice());
            ps.setDouble(6, p.getSalePrice());
            ps.setInt(7, p.getAuthorID());
            ps.setString(8, p.getTranslator());
            ps.setInt(9, p.getPublisherID());
            ps.setInt(10, p.getSupplierID());
            ps.setString(11, p.getLanguage());
            ps.setString(12, p.getSize());
            ps.setDouble(13, p.getWeight());
            ps.setInt(14, p.getNumberOfPage());
            ps.setString(15, p.getFormat());
            ps.setInt(16, p.getImage());
            ps.setDate(17, p.getPublishDate());
            ps.setString(18, p.getPublishingLicense());
            ps.setString(19, p.getDescription());
            ps.setBoolean(20, p.isDiscontinued());
            ps.executeUpdate();
        } catch (SQLException e) {
            connection.rollback();
        } finally {
            //DBContext.releaseJBDCObject(rs, ps, connection);
        }
    }
    
//    public static void main(String[] args) {
//<<<<<<< HEAD
//<<<<<<< Updated upstream
//        ArrayList<Product> list = new ProductDAO().getProductsByCatNSearch("",1,true);
//        System.out.println(list.size());
//        for (Product product : list) {
//            System.out.println(product);
//        }
//=======
//        ArrayList<Product> p = new ProductDAO().getProducts(false);
//        System.out.println(p.get(0).getAuthorID());
//  
//        
//>>>>>>> Stashed changes
//=======
//        Product p = new ProductDAO().getProductInfor(6);
//        System.out.println(p.getAuthorID());
//  
//        
//>>>>>>> 4d10deee2db37bac8249fdeaf944af361ec08c15
//    }
            
}
