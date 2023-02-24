package DAL;

import models.Account;
import models.Customer;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;

public class AccountDAO extends DBContext {

    public Account getAccountByEmail(String email) {
        Account acc = null;
        try {
            String sql = "select * from Accounts where Email=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            acc = getObject(rs);
        } catch (Exception e) {
        }
        return acc;
    }

    public Account getObject(ResultSet rs) {
        Account acc = null;
        try {
            while (rs.next()) {
                int AccountID = rs.getInt("AccountID");
                String Email = rs.getString("Email");
                String Password = rs.getString("Password");
                int CustomerID = rs.getInt("CustomerID");
                int EmployeeID = rs.getInt("EmployeeID");
                int Role = rs.getInt("Role");
                acc = new Account(AccountID, Email, Password, CustomerID, EmployeeID, Role);
            }
        } catch (Exception e) {
        }
        return acc;
    }

    public Account getAccount(String email, String pass) {
        Account acc = null;
        try {
            String sql = "select * from Accounts where Email=? and Password=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            acc = getObject(rs);
        } catch (Exception e) {
        }
        return acc;
    }

    public boolean editProfile(Customer cus, Account acc) {
        int result = 0;
        try {
//                String sql1="UPDATE Customers SET CompanyName = ?,ContactName = ?,ContactTitle=?, [Address]=? WHERE CustomerID=?";
//                String sql2="UPDATE Accounts SET [Password] = ? WHERE Email=?";
            String sql = "exec updateAccount ?, ?, ?, ?, ?, ?, ?, ?, ?;";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, createNewCusID());
            ps.setString(2, cus.getFirstName());
            ps.setString(3, cus.getLastName());
            ps.setString(4, cus.getContactTitle());
            ps.setDate(5, cus.getDateOfBirth());
            ps.setString(6, cus.getAddress());
            ps.setString(7, cus.getPhoneNumber());
            ps.setString(8, acc.getEmail());
            ps.setString(9, acc.getPassword());
            result = ps.executeUpdate();
        } catch (Exception e) {
        }
        return result > 0;
    }

    public void editInfo(Customer c) {
        try {
            String sql = "update Customers set FirstName = ? , LastName = ?, ContactTitle = ?, Address = ?, PhoneNumber = ? where CustomerID = ?";
            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setString(1, c.getFirstName());
            ps.setString(2, c.getLastName());
            ps.setString(3, c.getContactTitle());
            ps.setString(4, c.getAddress());
            ps.setString(5, c.getPhoneNumber());
            ps.setInt(6, c.getCustomerID());

            ps.executeUpdate();

        } catch (Exception e) {
        }
    }

    public boolean createAccount(Customer cus, Account acc) {
        int result=0;
            try {
                String sql = "exec createAccount ?,?,?,?,?,?,?,?,?,?;";
                PreparedStatement ps = connection.prepareStatement(sql);
                ps.setInt(1,createNewCusID() );
                ps.setString(2, cus.getFirstName());
                ps.setString(3, cus.getLastName());
                ps.setString(4, cus.getContactTitle());
                ps.setDate(5, cus.getDateOfBirth());
                ps.setString(6, cus.getAddress());
                ps.setString(7, cus.getPhoneNumber());
                ps.setInt(8, createNewAccID());
                ps.setString(9, acc.getEmail());
                ps.setString(10, acc.getPassword());
                result = ps.executeUpdate();
            } catch (Exception e) {
            }
            return result>0;
    }

    public int createNewCusID() {
        int maxCusID = 0;
        try {
            String sql = "select Max(Customers.CustomerID) as 'MaxCusID' from Customers";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                maxCusID = rs.getInt("MaxCusID");
            }
        } catch (Exception e) {
        }
        return maxCusID + 1;
    }
    public int createNewAccID(){
        int maxAccID=0;
        try {
            String sql = "select Max(Accounts.AccountID) as 'MaxAccID' from Accounts";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                maxAccID = rs.getInt("MaxAccID");
            }
        } catch (Exception e) {
        }
        return maxAccID+1;
    }
    
    
    private String randomString(int n) {
        String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                + "0123456789"
                + "abcdefghijklmnopqrstuvxyz";
        StringBuilder sb = new StringBuilder(n);
        for (int i = 0; i < n; i++) {
            int index
                    = (int) (AlphaNumericString.length()
                    * Math.random());
            sb.append(AlphaNumericString
                    .charAt(index));
        }
        return sb.toString();
    }

    public String randomId(int n) {
        String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                + "0123456789"
                + "abcdefghijklmnopqrstuvxyz";
        StringBuilder sb = new StringBuilder(n);
        for (int i = 0; i < n; i++) {
            int index
                    = (int) (AlphaNumericString.length()
                    * Math.random());
            sb.append(AlphaNumericString
                    .charAt(index));
        }
        return sb.toString();
    }

    public boolean changePassword(Account account) {
        int rs = 0;
        try {
            String sql = "update Accounts set Password =? where Email=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, account.getPassword());
            ps.setString(2, account.getEmail());
            rs = ps.executeUpdate();
        } catch (SQLException e) {
        }
        return rs > 0;
    }

    public static void main(String[] args) {
        Customer cus = new Customer(1, "a", "b", "c", "d", "e");
        new AccountDAO().editInfo(cus);
    }
}
