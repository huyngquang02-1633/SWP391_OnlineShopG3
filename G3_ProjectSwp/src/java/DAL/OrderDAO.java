/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import models.DBContext;
import models.Order;
import models.OrderDetail;
import models.Product;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author user
 */
public class OrderDAO extends DBContext{
    public ArrayList<Order> getAllOrdersOfACus(int cusID) {
        ArrayList<Order> orders = new ArrayList<>();
        try {
            String sql = "select * from Orders o where o.CustomerID = ?";
            //b2 tao doi tuong nhe
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, cusID);
            //b3thuc thi truy van
            ResultSet rs = ps.executeQuery();
            //b4 xu ly kqua tra ve
            while (rs.next()) {
                //doc du lieu tu 'rs' gan cho cac bien cuc bo
                int OrderID = rs.getInt("OrderID");
                String CustomerID = rs.getString("CustomerID");
                int EmployeeID = rs.getInt("EmployeeID");
                Date OrderDate = rs.getDate("OrderDate");
                Date RequiredDate = rs.getDate("RequiredDate");
                Date ShippedDate = rs.getDate("ShippedDate");
                double Freight = rs.getDouble("Freight");
                String ShipName = rs.getString("ShipName");
                String ShipAddress = rs.getString("ShipAddress");
                String ShipCity = rs.getString("ShipCity");
                String ShipRegion = rs.getString("ShipRegion");
                String ShipPostalCode = rs.getString("ShipPostalCode");
                String ShipCountry = rs.getString("ShipCountry");
                Order o = new Order(OrderID, cusID, EmployeeID, OrderDate, RequiredDate, ShippedDate, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry);
                orders.add(o);
            }
        } catch (Exception e) {
            
        }//finally{ connection.close();}
        return orders;
    }
    
    public ArrayList<Order> getAllCanceledOrdersOfCus(int cusID) {
        ArrayList<Order> orders = new ArrayList<>();
        try {
//            String sql = "select DISTINCT o.OrderID, o.CustomerID,o.EmployeeID,o.OrderDate,o.RequiredDate,o.ShipAddress,o.ShipName,o.ShipPostalCode,o.ShipRegion,o.ShipCity,o.Freight,o.ShipCountry,o.ShippedDate\n" +
//            "from Accounts a,Customers c, Orders o,[Order Details] od where\n" +
//            "a.AccountID=? and a.CustomerID=c.CustomerID and c.CustomerID=o.CustomerID and od.OrderID=o.OrderID and RequiredDate IS NULL";
            String sql = "select * from Orders o where o.CustomerID = ? AND RequiredDate IS NULL";
            //b2 tao doi tuong nhe
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, cusID);
            //b3thuc thi truy van
            ResultSet rs = ps.executeQuery();
            //b4 xu ly kqua tra ve
            while (rs.next()) {
                //doc du lieu tu 'rs' gan cho cac bien cuc bo
                int OrderID = rs.getInt("OrderID");
                String CustomerID = rs.getString("CustomerID");
                int EmployeeID = rs.getInt("EmployeeID");
                Date OrderDate = rs.getDate("OrderDate");
                Date RequiredDate = rs.getDate("RequiredDate");
                Date ShippedDate = rs.getDate("ShippedDate");
                double Freight = rs.getDouble("Freight");
                String ShipName = rs.getString("ShipName");
                String ShipAddress = rs.getString("ShipAddress");
                String ShipCity = rs.getString("ShipCity");
                String ShipRegion = rs.getString("ShipRegion");
                String ShipPostalCode = rs.getString("ShipPostalCode");
                String ShipCountry = rs.getString("ShipCountry");
                Order o = new Order(OrderID, cusID, EmployeeID, OrderDate, RequiredDate, ShippedDate, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry);
                orders.add(o);
            }
        } catch (Exception e) {
            
        }//finally{ connection.close();}
        return orders;
    }
    
    public ArrayList<Order> getAllOrders() {
        ArrayList<Order> orders = new ArrayList<>();
        try {
            String sql = "select * from Orders";
            //b2 tao doi tuong nhe
            PreparedStatement ps = connection.prepareStatement(sql);
            //b3thuc thi truy van
            ResultSet rs = ps.executeQuery();
            //b4 xu ly kqua tra ve
            while (rs.next()) {
                //doc du lieu tu 'rs' gan cho cac bien cuc bo
                int OrderID = rs.getInt("OrderID");
                String CustomerID = rs.getString("CustomerID");
                int EmployeeID = rs.getInt("EmployeeID");
                Date OrderDate = rs.getDate("OrderDate");
                Date RequiredDate = rs.getDate("RequiredDate");
                Date ShippedDate = rs.getDate("ShippedDate");
                double Freight = rs.getDouble("Freight");
                String ShipName = rs.getString("ShipName");
                String ShipAddress = rs.getString("ShipAddress");
                String ShipCity = rs.getString("ShipCity");
                String ShipRegion = rs.getString("ShipRegion");
                String ShipPostalCode = rs.getString("ShipPostalCode");
                String ShipCountry = rs.getString("ShipCountry");
                Order o = new Order(OrderID, EmployeeID, EmployeeID, OrderDate, RequiredDate, ShippedDate, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry);
                orders.add(o);
            }
        } catch (Exception e) {
            
        }//finally{ connection.close();}
        return orders;
    }
    
    
    
    public ArrayList<Order> getOrderInRange(String fromDate, String toDate) {
        ArrayList<Order> orders = new ArrayList<>();
        try {
            String sql = "";
            PreparedStatement ps=null;
            if(!fromDate.isEmpty() && toDate.isEmpty()){
                sql="select * from Orders o where o.OrderDate >= ? ";
                ps = connection.prepareStatement(sql);
                ps.setDate(1,Date.valueOf(fromDate) );
            }else if(fromDate.isEmpty() && !toDate.isEmpty()){
                sql="select * from Orders o where o.OrderDate <= ? ";
                ps = connection.prepareStatement(sql);
                ps.setDate(1, Date.valueOf(toDate));
            }else if(!fromDate.isEmpty() && !toDate.isEmpty()){
                sql="select * from Orders o where o.OrderDate BETWEEN ? AND ? ";
                ps = connection.prepareStatement(sql);
                ps.setDate(1, Date.valueOf(fromDate));
                ps.setDate(2, Date.valueOf(toDate));
            }
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                //doc du lieu tu 'rs' gan cho cac bien cuc bo
                int OrderID = rs.getInt("OrderID");
                String CustomerID = rs.getString("CustomerID");
                int EmployeeID = rs.getInt("EmployeeID");
                Date OrderDate = rs.getDate("OrderDate");
                Date RequiredDate = rs.getDate("RequiredDate");
                Date ShippedDate = rs.getDate("ShippedDate");
                double Freight = rs.getDouble("Freight");
                String ShipName = rs.getString("ShipName");
                String ShipAddress = rs.getString("ShipAddress");
                String ShipCity = rs.getString("ShipCity");
                String ShipRegion = rs.getString("ShipRegion");
                String ShipPostalCode = rs.getString("ShipPostalCode");
                String ShipCountry = rs.getString("ShipCountry");
                Order o = new Order(OrderID, EmployeeID, EmployeeID, OrderDate, RequiredDate, ShippedDate, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry);
                orders.add(o);
            }
        } catch (Exception e) {
            
        }//finally{ connection.close();}
        return orders;
    }
    
    public ArrayList<OrderDetail> getDetailOfOrderByAcc(int accID) {
        ArrayList<OrderDetail> orderDetails = new ArrayList<>();
        try {
            String sql = "select od.OrderID,od.ProductID,od.UnitPrice,od.Quantity,od.Discount from Accounts a,Customers c, Orders o,[Order Details] od where\n" +
            "a.AccountID=? and a.CustomerID=c.CustomerID and c.CustomerID=o.CustomerID and od.OrderID=o.OrderID";
            //b2 tao doi tuong nhe
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, accID);
            //b3thuc thi truy van
            ResultSet rs = ps.executeQuery();
            
            //b4 xu ly kqua tra ve
            while (rs.next()) {
                //doc du lieu tu 'rs' gan cho cac bien cuc bo
                int OrderID = rs.getInt("OrderID");
                int ProductID = rs.getInt("ProductID");
                double SalePrice = rs.getDouble("SalePrice");
                int Quantity = rs.getInt("Quantity");
                int DiscountID = rs.getInt("DiscountID");
                OrderDetail od = new OrderDetail(OrderID, ProductID, SalePrice, Quantity, DiscountID);
                orderDetails.add(od);
            }
        } catch (Exception e) {
            
        }//finally{ connection.close();}
        return orderDetails;
    }
    
    public ArrayList<OrderDetail> getDetailsListOfOrderByOdID(int OdID) {
        ArrayList<OrderDetail> orderDetails = new ArrayList<>();
        try {
            String sql = "select * from [Order Details] where OrderID=?";
            //b2 tao doi tuong nhe
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, OdID);
            //b3thuc thi truy van
            ResultSet rs = ps.executeQuery();
            
            //b4 xu ly kqua tra ve
            while (rs.next()) {
                //doc du lieu tu 'rs' gan cho cac bien cuc bo
                int OrderID = rs.getInt("OrderID");
                int ProductID = rs.getInt("ProductID");
                double SalePrice = rs.getDouble("SalePrice");
                int Quantity = rs.getInt("Quantity");
                int DiscountID = rs.getInt("DiscountID");
                OrderDetail od = new OrderDetail(OrderID, ProductID, SalePrice, Quantity, DiscountID);
                orderDetails.add(od);
            }
        } catch (Exception e) {
            
        }//finally{ connection.close();}
        return orderDetails;
    }
    
    public Order getOrderByID(int odID) {
        try {
            String sql="select * from Orders WHERE OrderID=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, odID);
           
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                //doc du lieu tu 'rs' gan cho cac bien cuc bo
                int OrderID = rs.getInt("OrderID");
                String CustomerID = rs.getString("CustomerID");
                int EmployeeID = rs.getInt("EmployeeID");
                Date OrderDate = rs.getDate("OrderDate");
                Date RequiredDate = rs.getDate("RequiredDate");
                Date ShippedDate = rs.getDate("ShippedDate");
                double Freight = rs.getDouble("Freight");
                String ShipName = rs.getString("ShipName");
                String ShipAddress = rs.getString("ShipAddress");
                String ShipCity = rs.getString("ShipCity");
                String ShipRegion = rs.getString("ShipRegion");
                String ShipPostalCode = rs.getString("ShipPostalCode");
                String ShipCountry = rs.getString("ShipCountry");
                return new Order(OrderID, EmployeeID, EmployeeID, OrderDate, 
                        RequiredDate, ShippedDate, Freight, ShipName, ShipAddress, 
                        ShipCity, ShipRegion, ShipPostalCode, ShipCountry);
            }
        } catch (Exception e) {
            
        }//finally{ connection.close();}
        return null;
        
    }
    
    public void createOrder(Order od) throws SQLException{
        try {
            String sql = "INSERT INTO Orders VALUES(?,?,?,GETDATE(),DATEADD(day, 7,GETDATE()),NULL,?,?,?,?,?,?,?)";
            
            PreparedStatement ps1 = connection.prepareStatement(sql);
            ps1.setInt(1, od.getOrderID());
            ps1.setInt(2, od.getCustomerID());
            ps1.setInt(3, od.getEmployeeID());
            ps1.setDouble(4, od.getFreight());
            ps1.setString(5, od.getShipName());
            ps1.setString(6, od.getShipAddress());
            ps1.setString(7, od.getShipCity());
            ps1.setString(8, od.getShipRegion());
            ps1.setString(9, od.getShipPostalCode());
            ps1.setString(10, od.getShipCountry());
            
            
            ps1.executeUpdate();
            
        } catch (Exception e) {
            connection.rollback();
        }//finally{ connection.close();}
        
    }
    public void createDetailOfOrder(OrderDetail odDetail) throws SQLException{
        try {
           
            String sql2 = "INSERT INTO [Order Details](OrderID,ProductID,UnitPrice,Quantity,Discount) VALUES(?,?,?,?,?)";
            PreparedStatement ps2 = connection.prepareStatement(sql2);
            
            ps2.setInt(1,odDetail.getOrderID());
            ps2.setInt(2, odDetail.getProductID());
            ps2.setDouble(3, odDetail.getSalePrice());
            ps2.setInt(4, odDetail.getQuantity());
            ps2.setDouble(5, odDetail.getDiscountID());
            ps2.executeUpdate();
            
        } catch (Exception e) {
            connection.rollback();
        }//finally{ connection.close();}
        
    }
    
   
    public int getNewOrderID(){
        int maxOrderID =0;
        try {
            String sql = "select Max(OrderID) as Maximum from Orders";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                maxOrderID = rs.getInt("Maximum");
            }
        } catch (Exception e) {
        }//finally{ connection.close();}
        return maxOrderID +1;
    }
    
    
    public boolean cancelOrder(int orderID) throws SQLException{
        int result=0;
        try {
            String sql = "update Orders SET RequiredDate=null WHERE OrderID=? AND ShippedDate IS NULL";
            //b2 tao doi tuong nhe
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, orderID);
            result = ps.executeUpdate();
        } catch (Exception e) {
            connection.rollback();
        }//finally{ connection.close();}
        return result>0;
    }
    
//    public ArrayList<OrderDetail> getOrderByMonth(int month){
//        ArrayList<OrderDetail> orders = new ArrayList<>();
//        try {
//            String sql = "select * from Orders where  Year(OrderDate)=YEAR(GETDATE()) AND MONTH(OrderDate)=?";
//            //b2 tao doi tuong nhe
//            PreparedStatement ps = connection.prepareStatement(sql);
//            ps.setInt(1, month);
//            //b3thuc thi truy van
//            ResultSet rs = ps.executeQuery();
//            //b4 xu ly kqua tra ve
//            while (rs.next()) {
//                //doc du lieu tu 'rs' gan cho cac bien cuc bo
//                int OrderID = rs.getInt("OrderID");
//                String CustomerID = rs.getString("CustomerID");
//                int EmployeeID = rs.getInt("EmployeeID");
//                String ShipName = rs.getString("ShipName");
//                String ShipAddress = rs.getString("ShipAddress");
//                String ShipCity = rs.getString("ShipCity");
//                String ShipRegion = rs.getString("ShipRegion");
//                String ShipPostalCode = rs.getString("ShipPostalCode");
//                String ShipCountry = rs.getString("ShipCountry");
//                double Freight = rs.getDouble("Freight");
//                Date OrderDate = rs.getDate("OrderDate");
//                Date RequiredDate = rs.getDate("RequiredDate");
//                Date ShippedDate = rs.getDate("ShippedDate");
//                
//                Order o = new Order(OrderID, EmployeeID, CustomerID, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry, Freight, OrderDate, RequiredDate, ShippedDate);
//                orders.add(o);
//            }
//        } catch (Exception e) {
//            
//        }//finally{ connection.close();}
//        return orders;
//    }
    
    public ArrayList<OrderDetail> getOrderDetailByMonth(int month){
        ArrayList<OrderDetail> odDetailList = new ArrayList<>();
        try {
            String sql = "select * from Orders o,[Order Details] od where o.OrderID=od.OrderID AND  Year(OrderDate)=YEAR(GETDATE()) AND MONTH(OrderDate)=?";
            //b2 tao doi tuong nhe
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, month);
            //b3thuc thi truy van
            ResultSet rs = ps.executeQuery();
            //b4 xu ly kqua tra ve
            while (rs.next()) {
                //doc du lieu tu 'rs' gan cho cac bien cuc bo
                int OrderID = rs.getInt("OrderID");
                int ProductID = rs.getInt("ProductID");
                double SalePrice = rs.getDouble("SalePrice");
                int Quantity = rs.getInt("Quantity");
                int DiscountID = rs.getInt("DiscountID");
                OrderDetail od = new OrderDetail(OrderID, ProductID, SalePrice, Quantity, DiscountID);
                odDetailList.add(od);
            }
        } catch (Exception e) {
            
        }//finally{ connection.close();}
        return odDetailList;
    }
    
    public ArrayList<OrderDetail> getOrderDetailByMonth(int month,int year){
        ArrayList<OrderDetail> odDetailList = new ArrayList<>();
        try {
            String sql = "select * from Orders o,[Order Details] od where o.OrderID=od.OrderID AND  Year(OrderDate)=? AND MONTH(OrderDate)=?";
            //b2 tao doi tuong nhe
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, year);
            ps.setInt(2, month);
            //b3thuc thi truy van
            ResultSet rs = ps.executeQuery();
            //b4 xu ly kqua tra ve
            while (rs.next()) {
                //doc du lieu tu 'rs' gan cho cac bien cuc bo
                int OrderID = rs.getInt("OrderID");
                int ProductID = rs.getInt("ProductID");
                double SalePrice = rs.getDouble("SalePrice");
                int Quantity = rs.getInt("Quantity");
                int DiscountID = rs.getInt("DiscountID");
                OrderDetail od = new OrderDetail(OrderID, ProductID, SalePrice, Quantity, DiscountID);
                odDetailList.add(od);
            }
        } catch (Exception e) {
            
        }//finally{ connection.close();}
        return odDetailList;
    }
    
    
    public static void main(String[] args) {
        OrderDAO odDAO = new OrderDAO();
//        ArrayList<Order> o = new OrderDAO().getAllOrdersOfCus(2);
//        ArrayList<OrderDetail> od = new OrderDAO().getDetailOfOrder(1);
//        for (OrderDetail orderDetail : od) {
//            System.out.println(orderDetail);
//        }  
        

        
//        try {
//            int result = odDAO.cancelOrder(11072);
//            System.out.println(result);
//        } catch (SQLException ex) {
//            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
        
        
//        try {
//            Order od = new Order( 1, "FRANK", "vu", "vu", "vu", "vu", "vu", "vu", 0);
//            odDAO.createOrder(od);
//            OrderDetail odDetail=new OrderDetail(new OrderDAO().getNewOrderID(), 12, 2,100-100*0.2, 0.2);
//            odDAO.createOrderDetail(odDetail);
//        } catch (SQLException ex) {
//            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }

//            LocalDate today = LocalDate.now();
//            int month = today.getMonthValue();
//            System.out.println("month = " + month);
//            for (int i = 1; i <= month; i++) {
//                ArrayList<Order> odList= new OrderDAO().getOrderByMonth(i);
//                System.out.println(odList.size());
//            }
           
            
//        ArrayList<Order> odList = new OrderDAO().getOrderByMonth(10);
//       for (Order oddList : odList) {
//           System.out.println(oddList);
//        } 
    }
}
