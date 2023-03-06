/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers;

import DAL.DepartmentsDAO;
import DAL.EmployeeDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import models.Department;
import models.Employee;

/**
 *
 * @author Thanh Dao
 */
public class EmployeeManage_admin extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        if(req.getSession().getAttribute("AccAdminSession")==null){
//            resp.sendRedirect(req.getContextPath()+"/404error.jsp");
//            return;
//        }
        ArrayList<Department> depart = new DepartmentsDAO().getAllDepartments();
        EmployeeDAO dao = new EmployeeDAO();
        ArrayList<Employee> empList = dao.getAllEmloyeesByID();
        
        req.setAttribute("empList", empList);
        req.setAttribute("depart", depart);
        req.getRequestDispatcher("employees.jsp").forward(req, resp);
    }
    
}
