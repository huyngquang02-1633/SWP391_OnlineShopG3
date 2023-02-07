/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author user
 */
public class OrderDetail {
    private int OrderID;
    private int ProductID;
    private double SalePrice;
    private int Quantity;
    private int DiscountID;

    public OrderDetail(int OrderID, int ProductID, double SalePrice, int Quantity, int DiscountID) {
        this.OrderID = OrderID;
        this.ProductID = ProductID;
        this.SalePrice = SalePrice;
        this.Quantity = Quantity;
        this.DiscountID = DiscountID;
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

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }

    public double getSalePrice() {
        return SalePrice;
    }

    public void setSalePrice(double SalePrice) {
        this.SalePrice = SalePrice;
    }

    public int getDiscountID() {
        return DiscountID;
    }

    public void setDiscountID(int DiscountID) {
        this.DiscountID = DiscountID;
    }

    @Override
    public String toString() {
        return "OrderDetail{" + "OrderID=" + OrderID + ", ProductID=" + ProductID + ", SalePrice=" + SalePrice + ", Quantity=" + Quantity + ", DiscountID=" + DiscountID + '}';
    }

    
    
    
    
}
