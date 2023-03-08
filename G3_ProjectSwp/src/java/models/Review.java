/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.sql.Date;

/**
 *
 * @author user
 */
public class Review {
    private int CustomerID;
    private int OrderID;
    private int ProductID;
    private int Rating;
    private String Comment;
    private String Image;
    private Date ReviewDate;

    public Review(int CustomerID, int OrderID, int ProductID, int Rating, String Comment, String Image, Date ReviewDate) {
        this.CustomerID = CustomerID;
        this.OrderID = OrderID;
        this.ProductID = ProductID;
        this.Rating = Rating;
        this.Comment = Comment;
        this.Image = Image;
        this.ReviewDate = ReviewDate;
    }

    public int getCustomerID() {
        return CustomerID;
    }

    public void setCustomerID(int CustomerID) {
        this.CustomerID = CustomerID;
    }

    public int getOrderID() {
        return OrderID;
    }

    public void setOrderID(int OrderID) {
        this.OrderID = OrderID;
    }

    public int getProductID() {
        return ProductID;
    }

    public void setProductID(int ProductID) {
        this.ProductID = ProductID;
    }

    public int getRating() {
        return Rating;
    }

    public void setRating(int Rating) {
        this.Rating = Rating;
    }

    public String getComment() {
        return Comment;
    }

    public void setComment(String Comment) {
        this.Comment = Comment;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String Image) {
        this.Image = Image;
    }

    public Date getReviewDate() {
        return ReviewDate;
    }

    public void setReviewDate(Date ReviewDate) {
        this.ReviewDate = ReviewDate;
    }

    @Override
    public String toString() {
        return "Review{" + "CustomerID=" + CustomerID + ", OrderID=" + OrderID + ", ProductID=" + ProductID + ", Rating=" + Rating + ", Comment=" + Comment + ", Image=" + Image + ", ReviewDate=" + ReviewDate + '}';
    }
    
    
}
