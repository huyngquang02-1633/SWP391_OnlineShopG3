
package DAL;

import models.Account;
import models.Customer;
import models.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AccountDAO extends DBContext{
    public Account getAccountByEmail(String email){
        Account acc = null;
        try {
            String sql = "select * from Accounts where Email=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                int AccountID = rs.getInt("AccountID");
                String Email = rs.getString("Email");
                String Password = rs.getString("Password");
                String CustomerID = rs.getString("CustomerID");
                int EmployeeID = rs.getInt("EmployeeID");
                int Role = rs.getInt("Role");
                acc = new Account(AccountID, Email, Password, CustomerID, EmployeeID, Role);
            }
        } catch (Exception e) {
        }
        return acc;
    }
    
    public Account getAccount(String email, String pass){
        Account acc = null;
        try {
            String sql = "select * from Accounts where Email=? and Password=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                int AccountID = rs.getInt("AccountID");
                String Email = rs.getString("Email");
                String Password = rs.getString("Password");
                String CustomerID = rs.getString("CustomerID");
                int EmployeeID = rs.getInt("EmployeeID");
                int Role = rs.getInt("Role");
                acc = new Account(AccountID, Email, Password, CustomerID, EmployeeID, Role);
            }
        } catch (Exception e) {
        }
        return acc;
    }

    
    public boolean editProfile(Customer cus, Account acc){
        int result=0;
            try {
//                String sql1="UPDATE Customers SET CompanyName = ?,ContactName = ?,ContactTitle=?, [Address]=? WHERE CustomerID=?";
//                String sql2="UPDATE Accounts SET [Password] = ? WHERE Email=?";
                String sql = "exec updateAccount ?, ?, ?, ?, ?, ?, ?,?,?;";
                PreparedStatement ps = connection.prepareStatement(sql);
                ps.setInt(1,createNewCusID() );
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
            return result>0;
    }
  
    
    public boolean createAccount(Customer cus, Account acc){
        int result=0;
            try {
//                String sql1="insert into Customers(CustomerID, CompanyName , ContactName,ContactTitle,Address,CreateDate) values(?,?,?,?,?,GETDATE())";
//                String sql2="insert into Accounts(Email, Password,CustomerID,Role) values(?,?,?,?)";
                String sql = "exec createAccount ?, ?, ?, ?, ?, ?, ?,?,?;";
                PreparedStatement ps = connection.prepareStatement(sql);
                ps.setInt(1,createNewCusID() );
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
            return result>0;
    }
    
    public int createNewCusID(){
        int maxCusID=0;
        try {
            String sql = "select Max(Customers.CustomerID) as 'MaxCusID' from Customers";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                maxCusID = rs.getInt("MaxCusID");
            }
        } catch (Exception e) {
        }
        return maxCusID+1;
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
        Account acc = new Account(0, "vuvu1234", "1234", "s2In7", 0, 0);
        Customer cus = new Customer("s2In7", "vuvu", "vuvu", "vuvu", "vuvu");
        AccountDAO accDa0 = new AccountDAO();
        //accDa0.editProfile(cus, acc);
        accDa0.getAccount("vuvu1234", "123");
        System.out.println(accDa0.getAccount("vuvu1234", "123"));
    }
}
