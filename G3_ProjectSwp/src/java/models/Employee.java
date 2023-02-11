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
public class Employee {
    private int EmployeeID;
    private String FirstName;
    private String LastName;
    private boolean Gender;
    private int DepartmentID;
    private String Title;
    private String TitleOfCourtesy;
    private Date BirthDate;
    private Date HireDate;
    private String Address;
    private boolean Status;

    public Employee(int EmployeeID, String FirstName, String LastName, boolean Gender, int DepartmentID, String Title, String TitleOfCourtesy, Date BirthDate, Date HireDate, String Address, boolean Status) {
        this.EmployeeID = EmployeeID;
        this.FirstName = FirstName;
        this.LastName = LastName;
        this.Gender = Gender;
        this.DepartmentID = DepartmentID;
        this.Title = Title;
        this.TitleOfCourtesy = TitleOfCourtesy;
        this.BirthDate = BirthDate;
        this.HireDate = HireDate;
        this.Address = Address;
        this.Status = Status;
    }

    
    public int getEmployeeID() {
        return EmployeeID;
    }

    public void setEmployeeID(int EmployeeID) {
        this.EmployeeID = EmployeeID;
    }

    public int getDepartmentID() {
        return DepartmentID;
    }

    public void setDepartmentID(int DepartmentID) {
        this.DepartmentID = DepartmentID;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String LastName) {
        this.LastName = LastName;
    }

    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String FirstName) {
        this.FirstName = FirstName;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String Title) {
        this.Title = Title;
    }

    public String getTitleOfCourtesy() {
        return TitleOfCourtesy;
    }

    public void setTitleOfCourtesy(String TitleOfCourtesy) {
        this.TitleOfCourtesy = TitleOfCourtesy;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public Date getBirthDate() {
        return BirthDate;
    }

    public void setBirthDate(Date BirthDate) {
        this.BirthDate = BirthDate;
    }

    public Date getHireDate() {
        return HireDate;
    }

    public void setHireDate(Date HireDate) {
        this.HireDate = HireDate;
    }

    public boolean isGender() {
        return Gender;
    }

    public void setGender(boolean Gender) {
        this.Gender = Gender;
    }

    public boolean isStatus() {
        return Status;
    }

    public void setStatus(boolean Status) {
        this.Status = Status;
    }

    @Override
    public String toString() {
        return "Employee{" + "EmployeeID=" + EmployeeID + ", FirstName=" + FirstName + ", LastName=" + LastName + ", Gender=" + Gender + ", DepartmentID=" + DepartmentID + ", Title=" + Title + ", TitleOfCourtesy=" + TitleOfCourtesy + ", BirthDate=" + BirthDate + ", HireDate=" + HireDate + ", Address=" + Address + ", Status=" + Status + '}';
    }

    

    
}


