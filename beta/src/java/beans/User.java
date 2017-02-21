package beans;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.*;
import database.DbConnection;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.Date;
public class User 
{
    private String Nombre,Correo,Telefono,Password;
    
    public User()
    {
        Nombre="";
        Correo="";
        Password="";
        Telefono="";
//        FechaAgregado="";
//        FechaActualizado="";
    }        
 
    //----------------------------------//
    
    public String getNombre() 
    {
        return Nombre;
    }
    
    public String getCorreo() 
    {
        return Correo;
    }

    public String getPassword() 
    {
        return Password;
    }

    public String getTelefono() 
    {
        return Telefono;
    }
    
//    public String getFechaAgregado() 
//    {
//        return FechaAgregado;
//    }
//    public String getFechaActualizado() 
//    {
//        return FechaActualizado;
//    }
    //----------------------------------//
    
    public void setNombre(String Nombre) 
    {
        this.Nombre =Nombre;
    }

    public void setCorreo(String Correo) 
    {
        this.Correo =Correo;
    }

    public void setPassword(String Password) 
    {
        this.Password=Password;
    }

    public void setTelefono(String Telefono) 
    {
        this.Telefono=Telefono;
    }
    
//    public void setFechaAgregado() 
//    {
//        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
//        Date date = new Date();
//        this.FechaAgregado= dateFormat.format(date);
//    }
//    public void setFechaActualizado() 
//    {
//        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
//        Date date = new Date();
//        this.FechaActualizado= dateFormat.format(date);
//    }
    //----------------------------------//
      
    public void RegisterUser()
    {
        try
        {    
            DbConnection dbconn=new DbConnection();
            Connection myconnection= dbconn.Connection();
            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date date = new Date();
            String sqlString="INSERT INTO usuarios (Nombre,Correo,Password,Telefono,FechaAgregado,FechaActualizado) VALUES ('"+Nombre+"','"+Correo+"','"+Password+"','"+Telefono+"','"+dateFormat.format(date)+"','"+dateFormat.format(date)+"')";
            
            Statement myStatement = myconnection.createStatement();
            
            try
            {    
                myStatement.executeUpdate(sqlString);
                myStatement.close();
                myconnection.close();
            } catch (SQLException ex) {Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);}
        } catch (SQLException ex) {Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);}  
    }
    
    //----------------------------------//
    
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
    
    //----------------------------------//
    
    public void GetUser()
    {
            try 
            {      
                DbConnection dbconn=new DbConnection();
                Connection myconnection= dbconn.Connection();
                
                String sqlString = "SELECT * FROM usuarios WHERE Nombre = '"+Nombre+"'";
                Statement myStatement = myconnection.createStatement();
                ResultSet rs=myStatement.executeQuery(sqlString);

                while(rs.next())
                {
                    Nombre= rs.getString("Nombre");
                    Correo = rs.getString("Correo");
                    Password= rs.getString("Password");
                    Telefono = rs.getString("Telefono");
                }
                
                myStatement.close();
                myconnection.close();
                
            } catch (SQLException ex) {Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);} 
            
    }
    
    //----------------------------------//

}