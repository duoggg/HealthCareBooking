/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.BacSi;
import model.LichDat ;
/**
 *
 * @author DELL
 */
public class LichDatDao extends DBContext  {
    public int insert(String Idpa, int IdLich){
        
         String sql ="INSERT INTO LichDat (IDLich,IDBenhNhan) VALUES ( ?,?)";
        try{
            
            PreparedStatement st = connection.prepareStatement(sql);
            
            st.setInt(1, IdLich);
            st.setString(2,Idpa);
  
            st.executeUpdate();
            return 1;
        }catch(SQLException e){
            System.out.println(e);
            return 0;
        }
        
       
    }
    
    public List<LichDat> getAll(){
        List<LichDat> list = new ArrayList<>();
        String sql = "select * from LichDat ";
        
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                LichDat c = new LichDat();
                c.setIDBenhNhan(rs.getString("IDBenhNhan"));
                c.setIDLich(rs.getInt("IDLich"));
                c.setNgay(rs.getString("NgayDatLich"));
                
                
                list.add(c);
            }
            
        }catch(SQLException e){
            System.out.println(e);
            
        }
        
        return list;   
    }
    
     public List<LichDat> getListByPage(List<LichDat> list, int start, int end){
          ArrayList<LichDat> arr = new ArrayList<>();
          for(int i =start;i<end;i++){
              arr.add(list.get(i));
          }
          return arr;
      }
}
