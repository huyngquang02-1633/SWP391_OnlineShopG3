/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;


import models.Employee;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author user
 */
public class EmployeeDAO extends DBContext{
    public Employee getEmloyeeByID(int empID){
        Employee emp = null;
        try {
            String sql = "select * from Employees where EmployeeID=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, empID);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                int EmployeeID = rs.getInt("EmployeeID");
                String FirstName = rs.getString("FirstName");
                String LastName = rs.getString("LastName");
                boolean Gender = rs.getBoolean("Gender");
                int DepartmentID = rs.getInt("DepartmentID");
                String Title = rs.getString("Title");
                String TitleOfCourtesy = rs.getString("TitleOfCourtesy");
                Date BirthDate = rs.getDate("BirthDate");
                Date HireDate = rs.getDate("HireDate");
                String Address = rs.getString("Address");
                emp = new Employee(EmployeeID, FirstName, LastName, Gender, DepartmentID, Title, TitleOfCourtesy, BirthDate, HireDate, Address, Gender);
            }
        } catch (Exception e) {
        }
        return emp;
    }
    
    public ArrayList<Employee> getAllEmloyees(){
        ArrayList<Employee> empList = new ArrayList<>();
        try {
            String sql = "select * from Employees";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                int EmployeeID = rs.getInt("EmployeeID");
                String FirstName = rs.getString("FirstName");
                String LastName = rs.getString("LastName");
                boolean Gender = rs.getBoolean("Gender");
                int DepartmentID = rs.getInt("DepartmentID");
                String Title = rs.getString("Title");
                String TitleOfCourtesy = rs.getString("TitleOfCourtesy");
                Date BirthDate = rs.getDate("BirthDate");
                Date HireDate = rs.getDate("HireDate");
                String Address = rs.getString("Address");
                Employee emp = new Employee(EmployeeID, FirstName, LastName, Gender, DepartmentID, Title, TitleOfCourtesy, BirthDate, HireDate, Address, Gender);
                empList.add(emp);
            }
        } catch (Exception e) {
        }
        return empList;
    }
    
    public static void main(String[] args) {
        Employee emp = new EmployeeDAO().getEmloyeeByID(1);
        System.out.println(emp);
    }
}
