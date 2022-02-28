package Service;

import Model.Customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

import static Connection.ConnectionDb.connect;

public class Account {
    static Scanner sc = new Scanner(System.in);

    public Customer login() {
        System.out.println("Please enter your email and password to login.");
        System.out.println("Enter your email");
        String email = sc.next();
        System.out.println("Enter your password");
        String password = sc.next();

        try {
            Connection conn = connect();
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM customer WHERE email=? AND password=?");
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return extractCustomerFromResultSet(rs);
            }
        } catch (SQLException ex){
            ex.printStackTrace();
        }
        return null;
    }

    private Customer extractCustomerFromResultSet(ResultSet rs) {
        Customer customer = new Customer();
        try {
            customer.setCustomerId(rs.getInt("customerId"));
            customer.setFirstName(rs.getString("firstName"));
            customer.setLastName(rs.getString("lastName"));
            customer.setEmailAddress(rs.getString("emailAddress"));
            customer.setUserName(rs.getString("userName"));
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return customer;
    }
}
