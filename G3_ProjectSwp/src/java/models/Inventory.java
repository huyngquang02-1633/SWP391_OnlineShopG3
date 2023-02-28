/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author user
 */
public class Inventory {
    private int WarehouseID;
    private int ProductID;
    private int UnitInStock;
    private int Pending;

    public Inventory(int WarehouseID, int ProductID, int UnitInStock, int Pending) {
        this.WarehouseID = WarehouseID;
        this.ProductID = ProductID;
        this.UnitInStock = UnitInStock;
        this.Pending = Pending;
        
    }

    public int getPending() {
        return Pending;
    }

    public void setPending(int Pending) {
        this.Pending = Pending;
    }

    public int getWarehouseID() {
        return WarehouseID;
    }

    public void setWarehouseID(int WarehouseID) {
        this.WarehouseID = WarehouseID;
    }

    public int getProductID() {
        return ProductID;
    }

    public void setProductID(int ProductID) {
        this.ProductID = ProductID;
    }

    public int getUnitInStock() {
        return UnitInStock;
    }

    public void setUnitInStock(int UnitInStock) {
        this.UnitInStock = UnitInStock;
    }

    @Override
    public String toString() {
        return "Inventory{" + "WarehouseID=" + WarehouseID + ", ProductID=" + ProductID + ", UnitInStock=" + UnitInStock + '}';
    }
    
    
}
