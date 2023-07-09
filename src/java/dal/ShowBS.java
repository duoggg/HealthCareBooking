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

/**
 *
 * @author DELL
 */

public class ShowBS extends DBContext {
   public List<BacSi> getAll(){
        List<BacSi> list = new ArrayList<>();
        String sql = "select * from BacSi ";
        
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                BacSi c = new BacSi();
                c.setHoten(rs.getString("hoten"));
              
                c.setIDBacSi(rs.getString("IDBacSi"));
                c.setIDKhoa(rs.getInt("IDKhoa"));
                c.setNamSinh(rs.getInt("namSinh"));
                c.setEmail(rs.getString("email"));
                c.setIDRole(rs.getInt("IDRole"));
                c.setLink(rs.getString("link"));
                c.setPhongKham(rs.getString("phongKham"));
                c.setSDT(rs.getInt("SDT"));
                c.setPassword(rs.getString("password"));
                
                list.add(c);
            }
            
        }catch(SQLException e){
            System.out.println(e);
            
        }
        
        return list;   
    }
    public BacSi getBacSiById(String id){
        String sql = "select * from BacSi where IDBacSi = ?";
        
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1,id);
           
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                BacSi c = new BacSi();
                 c.setHoten(rs.getString("hoten"));
               
                c.setIDBacSi(rs.getString("IDBacSi"));
                c.setIDKhoa(rs.getInt("IDKhoa"));
                c.setNamSinh(rs.getInt("namSinh"));
                c.setEmail(rs.getString("email"));
                c.setIDRole(rs.getInt("IDRole"));
                c.setLink(rs.getString("link"));
                c.setPhongKham(rs.getString("phongKham"));
                c.setSDT(rs.getInt("SDT"));
                c.setPassword(rs.getString("password"));
                
                return c;
            }
        }catch(SQLException e){
            System.out.println(e);
        
        }
        return null;
    }
    
     public void delete(String id){
        String sql = "delete from BacSi where IDBacSi =?";
        
        
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            st.executeUpdate();
        }catch(SQLException e){
            System.out.println(e);
        }
    }
     
      public void update(String id, String name, String pass, int special, int year, String room, int sdt, String email, String link){
        String sql ="update BacSi " +
                        "set hoten = ? , " +
                        "	password = ?, IDKhoa = ? ," +
                        "	namSinh = ?, phongKham = ?," +
                        "	SDT = ? , " +
                        "	email = ? ," +
                        "	link = ? " +
                             
                        "where IDBacSi = ? ";
        
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, pass);
            st.setInt(3, special);
            st.setInt(4, year);
            st.setString(5, room);
            st.setInt(6, sdt);
            st.setString(7, email);
            st.setString(8, link);
            st.setString(9, id);
            
            
            st.executeUpdate();
        }catch(SQLException e){
            System.out.println(e);
        }
    }
      public List<BacSi> getBacSiByName(String name){
          List<BacSi> list = new ArrayList<>();
           String sql = "select * from BacSi where hoten like ? ";
        
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1,"%"+name+"%");
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                BacSi c = new BacSi();
                
               c.setHoten(rs.getString("hoten"));
                c.setIDBacSi(rs.getString("IDBacSi"));
                c.setIDKhoa(rs.getInt("IDKhoa"));
                c.setNamSinh(rs.getInt("namSinh"));
                c.setEmail(rs.getString("email"));
                c.setIDRole(rs.getInt("IDRole"));
                c.setLink(rs.getString("link"));
                c.setPhongKham(rs.getString("phongKham"));
                c.setSDT(rs.getInt("SDT"));
                c.setPassword(rs.getString("password"));
                
                list.add(c);
            }
            
        }catch(SQLException e){
            System.out.println(e);
            
        }
        return list;
        }
        
        public String getKhoaByIdBacSi(String IDDoc){
             String sql = "select * from BacSi bs JOIN KHOA k on bs.IDKhoa = k.IDKhoa and bs.IDBacSi = ? ";
        
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1,IDDoc);
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
        
      public List<BacSi> getListByPage(List<BacSi> list, int start, int end){
          ArrayList<BacSi> arr = new ArrayList<>();
          for(int i =start;i<end;i++){
              arr.add(list.get(i));
          }
          return arr;
      }
            
      
          
          
      
      
      
}
