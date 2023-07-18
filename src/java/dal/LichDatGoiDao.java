/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import model.LichDat;

/**
 *
 * @author DELL
 */
public class LichDatGoiDao extends DBContext {
     public int insert(int Idser,String IDBenhNhan, String Ngay ,int IDCa){
        
         String sql ="INSERT INTO LichDatGoi (IDService,IDBenhNhan,NgayKham,IDCa) VALUES ( ?,?,?,?)";
        try{
            
            PreparedStatement st = connection.prepareStatement(sql);
            
            st.setInt(1, Idser);
            st.setString(2,IDBenhNhan);
            st.setString(3,Ngay);
            st.setInt(4,IDCa);
            st.executeUpdate();
            return 1;
        }catch(SQLException e){
            System.out.println(e);
            return 0;
        }
        
       
    }
     
     public  static void main(String[] args) {
           LichDatGoiDao c = new LichDatGoiDao();
           c.insert(1, "BN001", "07/17/2023", 1);
          
          
       }
}
