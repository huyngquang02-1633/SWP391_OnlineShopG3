
package models;

public class Account {
    private int AccountID;
    private String Email;
    private String Password;
    private int CustomerID;
    private int EmployeeID;
    private int Role;
    private String Image;

    public Account(int AccountID, String Email, String Password, int CustomerID, int EmployeeID, int Role) {
        this.AccountID = AccountID;
        this.Email = Email;
        this.Password = Password;
        this.CustomerID = CustomerID;
        this.EmployeeID = EmployeeID;
        this.Role = Role;
    }
    public Account(int AccountID, String Email, String Password, int CustomerID, int EmployeeID, int Role, String Image) {
        this.AccountID = AccountID;
        this.Email = Email;
        this.Password = Password;
        this.CustomerID = CustomerID;
        this.EmployeeID = EmployeeID;
        this.Role = Role;
        this.Image = Image;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String Image) {
        this.Image = Image;
    }

    
    public int getAccountID() {
        return AccountID;
    }

    public void setAccountID(int AccountID) {
        this.AccountID = AccountID;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public int getCustomerID() {
        return CustomerID;
    }

    public void setCustomerID(int CustomerID) {
        this.CustomerID = CustomerID;
    }

    public int getEmployeeID() {
        return EmployeeID;
    }

    public void setEmployeeID(int EmployeeID) {
        this.EmployeeID = EmployeeID;
    }

    public int getRole() {
        return Role;
    }

    public void setRole(int Role) {
        this.Role = Role;
    }

    @Override
    public String toString() {
        return "Account{" + "AccountID=" + AccountID + ", Email=" + Email + ", Password=" + Password + ", CustomerID=" + CustomerID + ", EmployeeID=" + EmployeeID + ", Role=" + Role + '}';
    }
}
