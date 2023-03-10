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
import java.util.List;
import models.Department;
import models.Employee;
import models.PaginationObject;

/**
 *
 * @author Thanh Dao
 */
public class EmployeeManage_admin extends HttpServlet {

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
//        PaginationObject paging = new PaginationObject();
//
//        int currentPage = 1;
//        if (req.getParameter("currentPage") != null) {
//            currentPage = Integer.parseInt(req.getParameter("currentPage"));
//        }
//        System.out.println("currentPage: " + currentPage);
//
//        ArrayList<Department> depart = new DepartmentsDAO().getAllDepartments();
//        EmployeeDAO dao = new EmployeeDAO();
//        ArrayList<Employee> empList = dao.getAllEmloyeesByID();
//        req.setAttribute("empList", empList);
//        req.setAttribute("depart", depart);
//        List<Employee> listInCurrentPage = paging.getListInCurrentPage(empList, currentPage);
//        int numberOfPage = paging.getNumberOfPage(empList);
//        req.setAttribute("numberOfPage", numberOfPage);
//        req.getSession().setAttribute("currentPage", currentPage);
//        req.getSession().setAttribute("empList", empList);
//        req.getSession().setAttribute("depart", depart);
//        req.setAttribute("listInCurrentPage", listInCurrentPage);
//        req.getRequestDispatcher("employees.jsp").forward(req, resp);

    }

//    public static void main(String[] args) {
//        EmployeeDAO dao = new EmployeeDAO();
//        PaginationObject paging = new PaginationObject();
//        int currentPage = 1;
//
//        ArrayList<Employee> empList = dao.getAllEmloyeesByID();
//        ArrayList<Department> depart = new DepartmentsDAO().getAllDepartments();
//        List<Employee> listInCurrentPage = paging.getListInCurrentPage(empList, currentPage);
//        System.out.println(empList);
//    }
    
    
}
