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
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
public class User 
{
    private String Nombre,Correo,Telefono,Password,Empresa,Apellido,Direccion,Pais,Ciudad,Zip,Estado,Genero,Nacimiento;
    public User()
    {
        Nombre="";
        Correo="";
        Password="";
        Telefono="";
        Empresa="";
        Apellido="";
        Direccion="";
        Pais="";
        Ciudad="";
        Zip="";
        Estado="";
        Genero="";
        Nacimiento = "";
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
    
     public String getEmpresa() 
    {
        return Empresa;
    }
     
    public String getApellido() 
    {
        return Apellido;
    }
    public String getDireccion() 
    {
        return Direccion;
    }
    public String getPais() 
    {
        return Pais;
    }
    public String getCiudad() 
    {
        return Ciudad;
    }
    public String getEstado() 
    {
        return Estado;
    }
    public String getZip() 
    {
        return Zip;
    }
    public String getNacimiento() 
    {
        return Nacimiento;
    }
    public String getGenero() 
    {
        return Genero;
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
    
    public void setEmpresa(String Empresa) 
    {
        this.Empresa =Empresa;
    }
    
    public void setApellido(String Apellido) 
    {
        this.Apellido =Apellido;
    }

    public void setPais(String Pais) 
    {
        this.Pais =Pais;
    }
    public void setCiudad(String Ciudad) 
    {
        this.Ciudad =Ciudad;
    }
    public void setPassword(String Password) 
    {
        this.Password=Password;
    }

    public void setTelefono(String Telefono) 
    {
        this.Telefono=Telefono;
    }
    public void setDireccion(String Direccion) 
    {
        this.Direccion = Direccion;
    }
    public void setEstado(String Estado) 
    {
        this.Estado = Estado;
    }
    public void setZip(String Zip) 
    {
        this.Zip = Zip;
    }
    public void setGenero(String Genero) 
    {
        this.Genero = Genero;
    }
    public void setNacimiento(String Nacimiento) 
    {
        DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
        this.Nacimiento= dateFormat.format(LocalDate.parse(Nacimiento,format));
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