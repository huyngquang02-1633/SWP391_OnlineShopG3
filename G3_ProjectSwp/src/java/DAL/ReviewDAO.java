/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import models.Product;
import models.Review;

/**
 *
 * @author user
 */
public class ReviewDAO extends DBContext{
    public ArrayList<Review> getReviewListByProductID(int productID){
        ArrayList<Review> reviewList = new ArrayList<>();
        try {
            String sql = "select * from Reviews where ProductID=?";
            PreparedStatement ps;
            ps= connection.prepareStatement(sql);
            ps.setInt(1,productID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                //doc du lieu tu 'rs' gan cho cac bien cuc bo
                int CustomerID = rs.getInt("CustomerID");
                int OrderID = rs.getInt("OrderID");
                int ProductID = rs.getInt("ProductID");
                int Rating = rs.getInt("Rating");
                String Comment = rs.getString("Comment");
                String Image = rs.getString("Image");
                Date ReviewDate = rs.getDate("ReviewDate");
                reviewList.add(new Review(CustomerID, OrderID, ProductID, Rating, Comment, Image, ReviewDate));
            }
        } catch (Exception e) {
        }
        return reviewList;
    }
    
    public static void main(String[] args) {
        ReviewDAO rvDAO = new ReviewDAO();
        System.out.println(rvDAO.getReviewListByProductID(1).size());
    }
}
