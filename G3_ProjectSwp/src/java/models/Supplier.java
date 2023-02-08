/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author user
 */
public class Supplier {
    private int SupplierId;
    private String Suppliername;
    private String Email;
    private String Fax;
    private String PhoneNumber;
    private String Address;

    public Supplier(int SupplierId, String Suppliername, String Email, String Fax, String PhoneNumber, String Address) {
        this.SupplierId = SupplierId;
        this.Suppliername = Suppliername;
        this.Email = Email;
        this.Fax = Fax;
        this.PhoneNumber = PhoneNumber;
        this.Address = Address;
    }

    public int getSupplierId() {
        return SupplierId;
    }

    public void setSupplierId(int SupplierId) {
        this.SupplierId = SupplierId;
    }

    public String getSuppliername() {
        return Suppliername;
    }

    public void setSuppliername(String Suppliername) {
        this.Suppliername = Suppliername;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getFax() {
        return Fax;
    }

    public void setFax(String Fax) {
        this.Fax = Fax;
    }

    public String getPhoneNumber() {
        return PhoneNumber;
    }

    public void setPhoneNumber(String PhoneNumber) {
        this.PhoneNumber = PhoneNumber;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    @Override
    public String toString() {
        return "Supplier{" + "SupplierId=" + SupplierId + ", Suppliername=" + Suppliername + ", Email=" + Email + ", Fax=" + Fax + ", PhoneNumber=" + PhoneNumber + ", Address=" + Address + '}';
    }
    
    
    
}
