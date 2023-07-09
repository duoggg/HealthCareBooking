/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/*
    Kết nối DATABASE


*/
package dal;
    import java.sql.Connection;
    import java.sql.DriverManager;
    import java.sql.SQLException;

public class DBContext{
    protected Connection connection;
    public DBContext(){
        try{
            String url ="jdbc:sqlserver://localhost:1433; databaseName = BookingCare";   /* databaseName*/
            String username = "sa";                                                     /* username*/
            String password = "123";                                                     /* pass */
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url,username,password);
            
        }
        catch(ClassNotFoundException | SQLException ex){
            System.out.println(ex);
        }
    }
}
/**
 *
 * @author DELL
 */

