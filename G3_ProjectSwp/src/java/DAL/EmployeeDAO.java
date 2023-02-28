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
                emp = new Employee(EmployeeID, FirstName, LastName, Gender, DepartmentID, Title, TitleOfCourtesy, BirthDate, HireDate, Address, Gender);
            }
        } catch (Exception e) {
        }
        return emp;
    }

    public ArrayList<Employee> getAllEmloyees() {
        ArrayList<Employee> empList = new ArrayList<>();
        try {
            String sql = "select * from Employees where status = 1";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int employeeID = rs.getInt("EmployeeID");
                String firstName = rs.getString("FirstName");
                String lastName = rs.getString("LastName");
                boolean gender = rs.getBoolean("Gender");
                int departmentID = rs.getInt("DepartmentID");
                String title = rs.getString("Title");
                String titleOfCourtesy = rs.getString("TitleOfCourtesy");
                Date birthDate = rs.getDate("BirthDate");
                Date hireDate = rs.getDate("HireDate");
                String address = rs.getString("Address");
                Employee emp = new Employee(employeeID, firstName, lastName, gender, departmentID, title, titleOfCourtesy, birthDate, hireDate, address, gender);
                empList.add(emp);
            }
        } catch (Exception e) {
        }
        return empList;
    }

    public void insertEmployee(Employee employee) {
//        enableInsertMode("Employees");
        String sql = "SET IDENTITY_INSERT Employees ON;"
                + " insert into [Employees] ([LastName]\n"
                + "      ,[FirstName]\n"
                + "      ,[Gender]\n"
                + "      ,[DepartmentID]\n"
                + "      ,[Title]\n"
                + "      ,[TitleOfCourtesy]\n"
                + "      ,[BirthDate]\n"
                + "      ,[HireDate]\n"
                + "      ,[Address]\n"
                + "      ,[Status])\n"
                + "values(?,?,?,?,?,?,?,?,?,?);"
                + " SET IDENTITY_INSERT Employees off";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, employee.getLastName());
            ps.setString(2, employee.getFirstName());
            ps.setBoolean(3, employee.isGender());
            ps.setInt(4, employee.getDepartmentID());
            ps.setString(5, employee.getTitle());
            ps.setBoolean(10, employee.isStatus());
            ps.setString(6, employee.getTitleOfCourtesy());
            ps.setString(9, employee.getAddress());
            ps.setDate(7, employee.getBirthDate());
            ps.setDate(8, employee.getHireDate());

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

    public static void main(String[] args) {
        Employee emp = new EmployeeDAO().getEmloyeeByID(1);
        System.out.println(emp);
    }
}
