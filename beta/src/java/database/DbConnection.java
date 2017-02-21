package database;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DbConnection 
{
    public Connection Connection()
    {
        try 
        {
            
            Class.forName("com.mysql.jdbc.Driver");
            String halmi = "jdbc:mysql://localhost:3306/halmi?user=root";
            Connection myConnection = DriverManager.getConnection(halmi);
          
            return myConnection;
            
        } catch (ClassNotFoundException | SQLException ex) {Logger.getLogger(DbConnection.class.getName()).log(Level.SEVERE, null, ex);}
        return null;
    }
}
