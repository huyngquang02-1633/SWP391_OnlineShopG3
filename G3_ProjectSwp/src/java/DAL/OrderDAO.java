/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import java.sql.Connection;
import models.Order;
import models.OrderDetail;
import models.Product;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.logging.Level;
import java.util.logging.Logger;
import models.Account;
import models.Cart;
import models.Customer;
import models.Discount;

/**
 *
 * @author user
 */
public class OrderDAO extends DBContext {

    public ArrayList<Order> getObjectOrderList(ResultSet rs) {
        ArrayList<Order> orderList = new ArrayList<>();
        try {
            while (rs.next()) {
                int OrderID = rs.getInt("OrderID");
                int CustomerID = rs.getInt("CustomerID");
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
                int Status = rs.getInt("Status");
                orderList.add(new Order(OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, Freight, ShipName,
                        ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry, Status));
            }
        } catch (Exception e) {
        }
        Collections.reverse(orderList);
        return orderList;
    }

    public ArrayList<OrderDetail> getObjectOrderDetailList(ResultSet rs) {
        ArrayList<OrderDetail> orderDetails = new ArrayList<>();
        try {
            while (rs.next()) {
                //doc du lieu tu 'rs' gan cho cac bien cuc bo
                int OrderID = rs.getInt("OrderID");
                int ProductID = rs.getInt("ProductID");
                double SalePrice = rs.getDouble("SalePrice");
                int WarehouseID = rs.getInt("WarehouseID");
                int Quantity = rs.getInt("Quantity");
                String DiscountID = rs.getString("DiscountID");
                OrderDetail od = new OrderDetail(OrderID, ProductID, WarehouseID, SalePrice, Quantity, DiscountID);
                orderDetails.add(od);
            }
        } catch (Exception e) {
        }
        return orderDetails;
    }

    public ArrayList<Order> getAllOrdersByCusID(int cusID) {
        ArrayList<Order> orderList = new ArrayList<>();
        try {
            if (connection == null) {
                System.out.println("Connection fail!");
            }
            String sql = "select * from Orders o where o.CustomerID = ? Order by o.OrderDate ASC";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, cusID);
            ResultSet rs = ps.executeQuery();
            orderList = getObjectOrderList(rs);
        } catch (Exception e) {

        }//finally{ connection.close();}
        return orderList;
    }

    public Order getOrdersByID(int orderID) {
        Order order = null;
        try {
            String sql = "select * from Orders o where o.CustomerID = ? Order by o.OrderDate ASC";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, orderID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int OrderID = rs.getInt("OrderID");
                int CustomerID = rs.getInt("CustomerID");
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
                int Status = rs.getInt("Status");

                order = new Order(OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry, Status);
            }
        } catch (Exception e) {

        }//finally{ connection.close();}
        return order;
    }

//        } catch (SQLException e) {
//            
//        } finally {
//            try {
//                if (connection != null) {
//                    connection.close();
//                }
//            } catch (SQLException e) {
//                
//            }
//        }
//        return orderList;
//    }
    public ArrayList<Order> getAllCanceledOrdersOfCus(int cusID) {
        ArrayList<Order> orderList = new ArrayList<>();
        try {
            String sql = "select * from Orders o where o.CustomerID = ? AND RequiredDate IS NULL";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, cusID);
            ResultSet rs = ps.executeQuery();
            orderList = getObjectOrderList(rs);
        } catch (Exception e) {

        }//finally{ connection.close();}
        return orderList;
    }

    public ArrayList<Order> getAllOrders() {
        ArrayList<Order> orderList = new ArrayList<>();
        try {
            String sql = "select * from Orders";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            orderList = getObjectOrderList(rs);
        } catch (Exception e) {

        }//finally{ connection.close();}
        return orderList;
    }

    public ArrayList<OrderDetail> getDetailOfOrderByOdID(int OdID) {
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
                int WarehouseID = rs.getInt("WarehouseID");
                int Quantity = rs.getInt("Quantity");
                double SalePrice = rs.getDouble("SalePrice");
                double Discount = rs.getDouble("Discount");
                OrderDetail od = new OrderDetail(OrderID, ProductID, Quantity, SalePrice, Discount);
                orderDetails.add(od);
            }
        } catch (Exception e) {

        }//finally{ connection.close();}
        return orderDetails;
    }

    public ArrayList<Order> getOrderInRange(String fromDate, String toDate) {
        ArrayList<Order> orderList = new ArrayList<>();
        try {
            String sql = "";
            PreparedStatement ps = null;
            if (!fromDate.isEmpty() && toDate.isEmpty()) {
                sql = "select * from Orders o where o.OrderDate >= ? ";
                ps = connection.prepareStatement(sql);
                ps.setDate(1, Date.valueOf(fromDate));
            } else if (fromDate.isEmpty() && !toDate.isEmpty()) {
                sql = "select * from Orders o where o.OrderDate <= ? ";
                ps = connection.prepareStatement(sql);
                ps.setDate(1, Date.valueOf(toDate));
            } else if (!fromDate.isEmpty() && !toDate.isEmpty()) {
                sql = "select * from Orders o where o.OrderDate BETWEEN ? AND ? ";
                ps = connection.prepareStatement(sql);
                ps.setDate(1, Date.valueOf(fromDate));
                ps.setDate(2, Date.valueOf(toDate));
            }
            ResultSet rs = ps.executeQuery();
            orderList = getObjectOrderList(rs);
        } catch (Exception e) {

        }//finally{ connection.close();}
        return orderList;
    }

    public ArrayList<OrderDetail> getDetailOfOrderByCusID(int cusID) {
        ArrayList<OrderDetail> orderDetails = new ArrayList<>();
        try {
            String sql = "select * from [Order Details] od , Orders o where od.OrderID=o.OrderID AND o.CustomerID=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, cusID);
            ResultSet rs = ps.executeQuery();
            orderDetails = getObjectOrderDetailList(rs);
        } catch (Exception e) {

        }//finally{ connection.close();}
        return orderDetails;
    }

    public ArrayList<OrderDetail> getDetailsListOfOrderByOdID(int OdID) {
        ArrayList<OrderDetail> orderDetails = new ArrayList<>();
        try {
            String sql = "select * from [Order Details] where OrderID=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, OdID);
            ResultSet rs = ps.executeQuery();
            orderDetails = getObjectOrderDetailList(rs);
        } catch (Exception e) {

        }//finally{ connection.close();}
        return orderDetails;
    }

    public Order getOrderByID(int odID) {
        try {
            String sql = "select * from Orders WHERE OrderID=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, odID);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                //doc du lieu tu 'rs' gan cho cac bien cuc bo
                int OrderID = rs.getInt("OrderID");
                int CustomerID = rs.getInt("CustomerID");
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
                int Status = rs.getInt("Status");
                return new Order(OrderID, CustomerID, EmployeeID, OrderDate,
                        RequiredDate, ShippedDate, Freight, ShipName, ShipAddress,
                        ShipCity, ShipRegion, ShipPostalCode, ShipCountry, Status);
            }
        } catch (Exception e) {

        }//finally{ connection.close();}
        return null;

    }

    public void createOrder(Order od) throws SQLException {
        try {
            String sql = "SET IDENTITY_INSERT [dbo].[Orders] ON \n"
                    + "INSERT INTO Orders([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], "
                    + "[ShipRegion], [ShipPostalCode], "
                    + "[ShipCountry], [Status]) VALUES(?,?,?,GETDATE(),DATEADD(day, 7,GETDATE()),NULL,?,?,?,?,?,?,?,?)\n"
                    + "SET IDENTITY_INSERT [dbo].[Orders] OFF";
            PreparedStatement ps1 = connection.prepareStatement(sql);
            ps1.setInt(1, od.getOrderID());
            ps1.setInt(2, od.getCustomerID());
            ps1.setInt(3, od.getEmployeeID());
            ps1.setDouble(4, 0);
            ps1.setString(5, od.getShipName());
            ps1.setString(6, od.getShipAddress());
            ps1.setString(7, od.getShipCity());
            ps1.setString(8, od.getShipRegion());
            ps1.setString(9, od.getShipPostalCode());
            ps1.setString(10, od.getShipCountry());
            ps1.setInt(11, 1);
            ps1.executeUpdate();

        } catch (Exception e) {
            //connection.rollback();
        }//finally{ connection.close();}

    }

    public void createOrderInDB(Order od, int accountID, String DiscountID) throws SQLException {
        try {
            String sql = "exec OrderAction ?,?,?,?,?,?,?";

            PreparedStatement ps1 = connection.prepareStatement(sql);
            ps1.setInt(1, accountID);
            ps1.setInt(2, od.getOrderID());
            ps1.setInt(3, od.getCustomerID());
            ps1.setString(4, od.getShipAddress());
            ps1.setString(5, od.getShipCity());
            ps1.setString(6, od.getShipPostalCode());
            ps1.setString(7, DiscountID);
            ps1.executeUpdate();
        } catch (Exception e) {
            connection.rollback();
        }//finally{ connection.close();}

    }

    public void createDetailOfOrder(OrderDetail odDetail) throws SQLException {
        try {

            String sql2 = "INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID])  VALUES(?,?,?,?,?,?)";
            PreparedStatement ps2 = connection.prepareStatement(sql2);

            ps2.setInt(1, odDetail.getOrderID());
            ps2.setInt(2, odDetail.getProductID());
            ps2.setInt(3, odDetail.getWarehouseID());
            ps2.setDouble(4, odDetail.getSalePrice());
            ps2.setInt(5, odDetail.getQuantity());
            ps2.setString(6, odDetail.getDiscountID());
            ps2.executeUpdate();

        } catch (Exception e) {
            connection.rollback();
        } finally {
            connection.close();
        }

    }

    public int getNewOrderID() {
        int maxOrderID = 0;
        try {
            String sql = "select Max(OrderID) as Maximum from Orders";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                maxOrderID = rs.getInt("Maximum");
            }
        } catch (Exception e) {
        }//finally{ connection.close();}
        return maxOrderID + 1;
    }

    public Discount getVoucher(String voucher) {
        Discount discount = null;
        try {
            String sql = "select * from Discount where DiscountID=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, voucher);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String DiscountID = rs.getString("DiscountID");
                String itle = rs.getString("Title");
                String Description = rs.getString("Description");
                LocalDateTime StartDate = rs.getTimestamp("StartDate").toLocalDateTime();
                LocalDateTime EndDate = rs.getTimestamp("EndDate").toLocalDateTime();
                double MinOrderValue = rs.getDouble("MinOrderValue");
                double Percentage = rs.getDouble("Percentage");
                int Type = rs.getInt("Type");
                int quantity = rs.getInt("Quantity");
                discount = new Discount(DiscountID, itle, Description, StartDate, EndDate, MinOrderValue, Percentage, Type, quantity);
            }
        } catch (Exception e) {
        }//finally{ connection.close();}
        return discount;
    }

    public boolean cancelOrder(int orderID) throws SQLException {
        int result = 0;
        try {
            String sql = "update Orders SET RequiredDate=null WHERE OrderID=? AND ShippedDate IS NULL";
            //b2 tao doi tuong nhe
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, orderID);
            result = ps.executeUpdate();
        } catch (Exception e) {
            connection.rollback();
        }//finally{ connection.close();}
        return result > 0;
    }

    public ArrayList<Order> getOrderByCurrentMonth(int month) {
        ArrayList<Order> orderList = new ArrayList<>();
        try {
            String sql = "select * from Orders where  Year(OrderDate)=YEAR(GETDATE()) AND MONTH(OrderDate)=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, month);
            ResultSet rs = ps.executeQuery();
            orderList = getObjectOrderList(rs);
        } catch (Exception e) {

        }//finally{ connection.close();}
        return orderList;
    }

    public ArrayList<Order> getOrderNearest5Month(int diffMonth) {
        ArrayList<Order> orderList = new ArrayList<>();
        try {
            String sql = "select * from Orders where Month(OrderDate) = Month(DATEADD(month, ?, getDate())) AND YEAR(OrderDate) = Year(DATEADD(month, ?, getDate()))";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, diffMonth);
            ps.setInt(2, diffMonth);
            ResultSet rs = ps.executeQuery();
            orderList = getObjectOrderList(rs);
        } catch (Exception e) {

        }//finally{ connection.close();}
        return orderList;
    }

    public ArrayList<OrderDetail> getOrderDetailByMonth(int month, int year) {
        ArrayList<OrderDetail> odDetailList = new ArrayList<>();
        try {
            String sql = "select * from Orders o,[Order Details] od where o.OrderID=od.OrderID AND  Year(OrderDate)=? AND MONTH(OrderDate)=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, year);
            ps.setInt(2, month);
            ResultSet rs = ps.executeQuery();
            odDetailList = getObjectOrderDetailList(rs);
        } catch (Exception e) {

        }//finally{ connection.close();}
        return odDetailList;
    }

    // ArrayList<Order> orderList = new ArrayList<>();
    //     try {
    //         String sql = "select * from Orders where  Year(OrderDate)=YEAR(GETDATE()) AND DAY(OrderDate)=DAY(GETDATE())";
    //         PreparedStatement ps = connection.prepareStatement(sql);
    //         ResultSet rs = ps.executeQuery();
    //         orderList = getObjectOrderList(rs);
    //     } catch (Exception e) {
    //     }//finally{ connection.close();}
    //     return orderList;
    // }
    public ArrayList<Order> getOrderToday() {
        ArrayList<Order> orderList = new ArrayList<>();
        try {
            String sql = "select * from Orders where  Year(OrderDate)=YEAR(GETDATE()) AND DAY(OrderDate)=DAY(GETDATE())";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            orderList = getObjectOrderList(rs);
        } catch (Exception e) {

        }//finally{ connection.close();}
        return orderList;
    }

    public ArrayList<OrderDetail> getOrderDetailByMonth(int month) {
        ArrayList<OrderDetail> orderDetails = new ArrayList<>();
        try {
            String sql = "select * from Orders o,[Order Details] od where o.OrderID=od.OrderID AND  Year(OrderDate)=YEAR(GETDATE()) AND MONTH(OrderDate)=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, month);
            ResultSet rs = ps.executeQuery();
            orderDetails = getObjectOrderDetailList(rs);
        } catch (Exception e) {

        }//finally{ connection.close();}
        return orderDetails;
    }

    public ArrayList<OrderDetail> getALLOrderDetailInCurrentMonth(int month, int year) {
        ArrayList<OrderDetail> orderDetails = new ArrayList<>();
        try {
            String sql = "select * from Orders o,[Order Details] od where o.OrderID=od.OrderID AND  Year(OrderDate)=? AND MONTH(OrderDate)=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, year);
            ps.setInt(2, month);
            ResultSet rs = ps.executeQuery();
            orderDetails = getObjectOrderDetailList(rs);
        } catch (Exception e) {

        }//finally{ connection.close();}
        return orderDetails;
    }

//    public static void main(String[] args) {
//        ArrayList<Cart> cart = new CartDAO().getCartListByAccID(1);
//        try {
//            OrderDAO odDAO = new OrderDAO();
//            ProductDAO proDAO = new ProductDAO();
//            int newOrderID = odDAO.getNewOrderID();
//            Order od = new Order(newOrderID, 1, 1, "shipperName", "", "", "region", "2345", "Viet Nam", 1);
//            //odDAO.createOrderInDB(od, accCustomer.getAccountID(), txtDiscountID);
//            odDAO.createOrder(od);
//
//            Discount discount = odDAO.getVoucher("SIEUSAPSAN40");
//            Product proInfor;
//            String voucher = "";
//            double discountAmount = 0;
//            for (Cart item : cart) {
//                proInfor = new ProductDAO().getProductInfor(item.getProductID());
//                if (discount != null) {
//                    voucher = discount.getDiscountID();
//                    discountAmount = (item.getQuantity() * proInfor.getSalePrice()) - (proInfor.getSalePrice() * discount.getPercentage());
//                }
//                OrderDetail odDetail = new OrderDetail(newOrderID, item.getProductID(), 1, discountAmount, item.getQuantity(), voucher);
//                odDAO.createDetailOfOrder(odDetail);
//            }
//        } catch (Exception e) {
//
//        }
    public void updateOrderStatus(String orderId, String status) throws SQLException {
        String sql = "UPDATE Orders SET status = ? WHERE OrderID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, status);
            ps.setString(2, orderId);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

//    public static void main(String[] args) {
//        ArrayList<Cart> cart = new CartDAO().getCartListByAccID(1);
//        try {
//            OrderDAO odDAO = new OrderDAO();
//            ProductDAO proDAO = new ProductDAO();
//            int newOrderID = odDAO.getNewOrderID();
//            Order od = new Order(newOrderID, 1, 1, "shipperName", "", "", "region", "2345", "Viet Nam", 1);
//            //odDAO.createOrderInDB(od, accCustomer.getAccountID(), txtDiscountID);
//            odDAO.createOrder(od);
//
//            Discount discount = odDAO.getVoucher("SIEUSAPSAN40");
//            Product proInfor;
//            String voucher = "";
//            double discountAmount = 0;
//            for (Cart item : cart) {
//                proInfor = new ProductDAO().getProductInfor(item.getProductID());
//                if (discount != null) {
//                    voucher = discount.getDiscountID();
//                    discountAmount = (item.getQuantity() * proInfor.getSalePrice()) - (proInfor.getSalePrice() * discount.getPercentage());
//                }
//                OrderDetail odDetail = new OrderDetail(newOrderID, item.getProductID(), 1, discountAmount, item.getQuantity(), voucher);
//                odDAO.createDetailOfOrder(odDetail);
//            }
//        } catch (Exception e) {
//
//        }
//    }
//    public static void main(String[] args) {
//        ArrayList<Order> orderList = new OrderDAO().getAllOrdersByCusID(2);
//        System.out.println(orderList);
//>>>>>>> 997ac2cb517b96debee541ff06cda96b287e4167
}
