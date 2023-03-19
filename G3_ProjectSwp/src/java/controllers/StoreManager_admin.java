/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import DAL.AccountDAO;
import DAL.DepartmentsDAO;
import DAL.EmployeeDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import models.Account;
import models.Customer;
import models.Department;
import models.Employee;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "StoreManager_admin", urlPatterns = {"/StoreManager_admin"})
public class StoreManager_admin extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("AccAdminSession") != null) {
            Account a = (Account) req.getSession().getAttribute("AccAdminSession");
            Employee em = new EmployeeDAO().getEmloyeeByID(a.getEmployeeID());
            req.setAttribute("em", em);
            req.setAttribute("account", a);
            ArrayList<Department> depart = new DepartmentsDAO().getAllDepartments();
            req.setAttribute("depart", depart);

            req.getRequestDispatcher("store_managerment.jsp").forward(req, resp);
        } else {
//
            resp.sendRedirect(req.getContextPath() + "/404error.jsp");
            return;
        }
    }

    //edit Profile Employees
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("AccAdminSession") != null) {
            Account b = (Account) req.getSession().getAttribute("AccAdminSession");
            String lastName = req.getParameter("txtLastName").replaceAll("\\s\\s+", " ").trim();
            String firstName = req.getParameter("txtFirstName").replaceAll("\\s\\s+", " ").trim();
            String title = req.getParameter("txtTitle").replaceAll("\\s\\s+", " ").trim();
            String phoneNumber = req.getParameter("txtPhoneNumber").replaceAll("\\s\\s+", " ").trim();
            String titleOfCourse = req.getParameter("txtTitleOfCourtesy").replaceAll("\\s\\s+", " ").trim();
            String address = req.getParameter("txtAddress").replaceAll("\\s\\s+", " ").trim();
            Boolean gender = Boolean.valueOf(req.getParameter("txtGender"));
            if (req.getParameter("txtBirthDate") != "") {
                Date birthday = Date.valueOf(req.getParameter("txtBirthDate"));
                Employee em = new Employee(b.getEmployeeID(), firstName, lastName, gender, title, titleOfCourse, birthday, address, phoneNumber);
                boolean results = new EmployeeDAO().EditInfoEmployees(em);
                PrintWriter a = resp.getWriter();
                a.print(em.toString());
                if (results == true) {
                    req.setAttribute("msg", "Update your infomation successful!!!");
                } else {
                    req.setAttribute("msg1", "Update your voucher infomation Fail!!!");
                }
            } else {
                Employee em = new Employee(b.getEmployeeID(), firstName, lastName, gender, title, titleOfCourse, address, phoneNumber);
                boolean results = new EmployeeDAO().EditInfoEmployees(em);
                if (results == true) {
                    req.setAttribute("msg", "Update your infomation successful!!!");
                } else {
                    req.setAttribute("msg1", "Update your infomation Fail!!!");
                }
            }

            Employee e = new EmployeeDAO().getEmloyeeByID(b.getEmployeeID());
            req.setAttribute("em", e);
            req.setAttribute("account", b);
            ArrayList<Department> depart = new DepartmentsDAO().getAllDepartments();
            req.setAttribute("depart", depart);

            req.getRequestDispatcher("store_managerment.jsp").forward(req, resp);

        } else {
            resp.sendRedirect(req.getContextPath() + "/404error.jsp");
        }
    }
}
