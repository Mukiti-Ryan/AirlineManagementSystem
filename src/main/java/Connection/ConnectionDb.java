package Connection;

import java.sql.*;

public class ConnectionDb {
    public static Connection connect() throws SQLException {
        String url = "jdbc:mysql://192.168.64.2:3306/airlinemanagement";
        String user = "ecwork";
        String password = "pass.word.1";
        return DriverManager.getConnection(url,user,password);
    }
}
