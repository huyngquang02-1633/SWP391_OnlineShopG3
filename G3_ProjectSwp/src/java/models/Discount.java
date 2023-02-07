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
public class Discount {
    private String DiscountID;
    private String Title;
    private String Description;
    private Date StartDate;
    private Date EndDate;
    private double MinOrderValue;
    private double Percentage;
    private int Type;

    public Discount(String DiscountID, String Title, String Description, Date StartDate, Date EndDate, double MinOrderValue, double Percentage, int Type) {
        this.DiscountID = DiscountID;
        this.Title = Title;
        this.Description = Description;
        this.StartDate = StartDate;
        this.EndDate = EndDate;
        this.MinOrderValue = MinOrderValue;
        this.Percentage = Percentage;
        this.Type = Type;
    }

    public String getDiscountID() {
        return DiscountID;
    }

    public void setDiscountID(String DiscountID) {
        this.DiscountID = DiscountID;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String Title) {
        this.Title = Title;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public Date getStartDate() {
        return StartDate;
    }

    public void setStartDate(Date StartDate) {
        this.StartDate = StartDate;
    }

    public Date getEndDate() {
        return EndDate;
    }

    public void setEndDate(Date EndDate) {
        this.EndDate = EndDate;
    }

    public double getMinOrderValue() {
        return MinOrderValue;
    }

    public void setMinOrderValue(double MinOrderValue) {
        this.MinOrderValue = MinOrderValue;
    }

    public double getPercentage() {
        return Percentage;
    }

    public void setPercentage(double Percentage) {
        this.Percentage = Percentage;
    }

    public int getType() {
        return Type;
    }

    public void setType(int Type) {
        this.Type = Type;
    }

    @Override
    public String toString() {
        return "Discount{" + "DiscountID=" + DiscountID + ", Title=" + Title + ", Description=" + Description + ", StartDate=" + StartDate + ", EndDate=" + EndDate + ", MinOrderValue=" + MinOrderValue + ", Percentage=" + Percentage + ", Type=" + Type + '}';
    }
    
    
}
