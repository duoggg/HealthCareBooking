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
import model.DichVu;


/**
 *
 * @author DELL
 */
public class DichVuDao extends DBContext {
     public List<DichVu> getAll(){
        List<DichVu> list = new ArrayList<>();
        String sql = "select * from DichVu ";
        
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                DichVu c = new DichVu();
                c.setIDService(rs.getInt("IDService"));
                c.setTen(rs.getString("ten"));
                c.setIDKhoa(rs.getInt("IDKhoa"));
                c.setGiaKham(rs.getInt("GiaKham"));
                
                
                
                list.add(c);
            }
            
        }catch(SQLException e){
            System.out.println(e);
            
        }
        
        return list;   
    }
     
      public DichVu getDichVuById(int id){
        String sql = "select * from DichVu where IDService = ?";
        
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1,id);
           
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                DichVu c = new DichVu();
                
                c.setIDService(rs.getInt("IDService"));
                c.setGiaKham(rs.getInt("GiaKham"));
                c.setIDKhoa(rs.getInt("IDKhoa"));
                c.setTen(rs.getString("ten"));
                
                return c;
            }
        }catch(SQLException e){
            System.out.println(e);
        
        }
        return null;
    }
      
      public String getKhoaByIdDichVu(int IdDichVu){
             String sql = "select * from DichVu dv JOIN KHOA k on dv.IDKhoa = k.IDKhoa and dv.IDService = ? ";
        
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1,IdDichVu);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                String c =  rs.getString("TenKhoa");
              
                
                return c;
            }
            
        }catch(SQLException e){
            System.out.println(e);
            
        }
        
        return null;   
        }
      
       public List<DichVu> getDichVuByName(String name){
          List<DichVu> list = new ArrayList<>();
           String sql = "select * from DichVu where ten like ? ";
        
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1,"%"+name+"%");
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                DichVu c = new DichVu();
                c.setIDKhoa(rs.getInt("IDKhoa"));
                c.setIDService(rs.getInt("IDService"));
                c.setGiaKham(rs.getInt("GiaKham"));
                c.setTen(rs.getString("ten"));
               
                
                list.add(c);
            }
            
        }catch(SQLException e){
            System.out.println(e);
            
        }
        return list;
        }
    
     
       public List<DichVu> getListByPage(List<DichVu> list, int start, int end){
          ArrayList<DichVu> ar = new ArrayList<>();
          for(int i =start;i<end;i++){
              ar.add(list.get(i));
          }
          return ar;
      }
       
//        public  static void main(String[] args) {
//           DichVuDao c = new DichVuDao();
//           
//           String e = c.getKhoaByIdDichVu(1);
//           System.out.println(e);
//       }
       
       
    
}
