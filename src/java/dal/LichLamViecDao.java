/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.BenhNhan;

/**
 *
 * @author DELL
 */
public class LichLamViecDao extends DBContext{
    public int getLichLamViecID(String iddoc, String Ngay, int ca){
        String sql = "select IDLich from LichLamViec where IDBacSi = ? and Ngay = ? and IDCa = ?";
        
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1,iddoc);
            st.setString(2,Ngay);
            st.setInt(3,ca);
           
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                int c = Integer.parseInt(rs.getString("IDLich"));    
                return c;
            }
        }catch(SQLException e){
            System.out.println(e);
        }
       
    return -1;
  }  
}
