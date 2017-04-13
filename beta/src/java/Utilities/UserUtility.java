/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utilities;

import beans.User;
import database.DbConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import beans.User;

/**
 *
 * @author ricar
 */
public class UserUtility {
    public static User GetUser(String Nombre)
    {
        User us = new User();
            try 
            {      
                DbConnection dbconn=new DbConnection();
                Connection myconnection= dbconn.Connection();
                
                String sqlString = "SELECT * FROM usuarios WHERE Nombre = '"+Nombre+"'";
                Statement myStatement = myconnection.createStatement();
                ResultSet rs=myStatement.executeQuery(sqlString);
                
                while(rs.next())
                {
                    us.setNombre(rs.getString("Nombre"));
                    us.setCorreo(rs.getString("Correo"));
                    us.setPassword(rs.getString("Password"));
                    us.setTelefono(rs.getString("Telefono"));
                }
                
                myStatement.close();
                myconnection.close();
                
            } catch (SQLException ex) {Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);} 
            
            return us;
    }
    
    public static boolean LoginUser(String user,String pwd) 
    {
            boolean check =false;
            try 
            {      
                DbConnection dbconn=new DbConnection();
                Connection myconnection= dbconn.Connection();
                
                PreparedStatement ps1 =myconnection.prepareStatement("select * from usuarios where Nombre=? and Password=?");

                ps1.setString(1, user);
                ps1.setString(2, pwd);
                ResultSet rs1 =ps1.executeQuery();
                check = rs1.next();

                myconnection.close();        
            }catch(Exception e){e.printStackTrace();}
            
            return check;    
    }
    
    public static void RegisterUser(User us)
    {
        try
        {    
            DbConnection dbconn=new DbConnection();
            Connection myconnection= dbconn.Connection();
            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date date = new Date();
            String sqlString="INSERT INTO usuarios (Nombre,Correo,Password,Telefono,FechaAgregado,FechaActualizado) VALUES ('"+us.getNombre()+"','"+us.getCorreo()+"','"+us.getPassword()+"','"+us.getTelefono()+"','"+dateFormat.format(date)+"','"+dateFormat.format(date)+"')";
            
            Statement myStatement = myconnection.createStatement();
            
            try
            {    
                myStatement.executeUpdate(sqlString);
                myStatement.close();
                myconnection.close();
            } catch (SQLException ex) {Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);}
        } catch (SQLException ex) {Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);}  
    }
}
