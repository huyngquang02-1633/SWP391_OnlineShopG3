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
public class EmployeeDAO extends DBContext {

    public Employee getEmloyeeByID(int empID) {
        Employee emp = null;
        try {
            String sql = "select * from Employees where EmployeeID=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, empID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
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
                boolean Status = rs.getBoolean("Status");
                emp = new Employee(EmployeeID, FirstName, LastName, Gender, DepartmentID, Title, TitleOfCourtesy, BirthDate, HireDate, Address, Status);
            }
        } catch (Exception e) {
        }
        return emp;
    }

    public ArrayList<Employee> getAllEmloyees() {
        ArrayList<Employee> empList = new ArrayList<>();
        try {
            String sql = "select * from Employees where Status = 1";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
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
                boolean Status = rs.getBoolean("Status");
                Employee emp = new Employee(EmployeeID, FirstName, LastName, Gender, DepartmentID, Title, TitleOfCourtesy, BirthDate, HireDate, Address, Status);
                empList.add(emp);
            }
        } catch (Exception e) {
        }
        return empList;
    }
    
    public ArrayList<Employee> getAllEmloyeesByID() {
        ArrayList<Employee> empList = new ArrayList<>();
        try {
            String sql = "select * from Employees";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
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
                boolean Status = rs.getBoolean("Status");
                Employee emp = new Employee(EmployeeID, FirstName, LastName, Gender, DepartmentID, Title, TitleOfCourtesy, BirthDate, HireDate, Address, Status);
                empList.add(emp);
            }
        } catch (Exception e) {
        }
        return empList;
    }
    

    public void insertEmployee(Employee employee) {
//        enableInsertMode("Employees");
        String sql = "SET IDENTITY_INSERT Employees ON;"

                + " insert into [Employees] ([EmployeeID],[LastName]\n"

                + "      ,[FirstName]\n"
                + "      ,[Gender]\n"
                + "      ,[DepartmentID]\n"
                + "      ,[Title]\n"
                + "      ,[TitleOfCourtesy]\n"
                + "      ,[BirthDate]\n"
                + "      ,[HireDate]\n"
                + "      ,[Address]\n"
                + "      ,[Status])\n"
                + "values(?,?,?,?,?,?,?,?,?,?,?);"
                + " SET IDENTITY_INSERT Employees off";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, employee.getEmployeeID());
            ps.setString(2, employee.getLastName());
            ps.setString(3, employee.getFirstName());
            ps.setBoolean(4, employee.isGender());
            ps.setInt(5, employee.getDepartmentID());
            ps.setString(6, employee.getTitle());
            ps.setString(7, employee.getTitleOfCourtesy());
            ps.setDate(8, employee.getBirthDate());

            ps.setDate(9, employee.getHireDate());
            ps.setString(10, employee.getAddress());
            ps.setBoolean(11, employee.isStatus());
            ps.executeUpdate();
//            disbleInsertMode("Employees");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void enableInsertMode(String tableName) {
        String sql = "SET IDENTITY_INSERT ? ON";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, tableName);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void disbleInsertMode(String tableName) {
        String sql = "SET IDENTITY_INSERT ? OFF";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, tableName);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int getNewEmployeeID() {
        int EmployeeID = 0;
        try {
            String sql = "select Max(EmployeeID) as Maximum from Employees";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                EmployeeID = rs.getInt("Maximum");
            }
        } catch (Exception e) {
        }//finally{ connection.close();}
        return EmployeeID + 1;
    }

    public void deleteEmployee(String EmployeeID) {
        String sql = "update Employees\n"
                + " set status = 0 where EmployeeID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, EmployeeID);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public void changeStatusEmployee(String EmployeeID) {
        String sql = "update Employees\n"
                + " set status = 1 where EmployeeID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, EmployeeID);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        Date birthDate = Date.valueOf("2022-02-02");
        Date hireDate = Date.valueOf("2022-02-02");
        EmployeeDAO abc = new EmployeeDAO();
        abc.insertEmployee(new Employee(1223, "vvv", "vvv", true, 2, "vvv", "vvv", birthDate, hireDate, "vvv", true));
    }
    
    
}
