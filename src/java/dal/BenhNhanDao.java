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

import model.BenhNhan;



/**
 *
 * @author DELL
 */
public class BenhNhanDao extends DBContext {
    public void insert(String hoten, int SDT, int namSinh, String gioiTinh, String diachi, String email){
        String sql ="INSERT INTO BenhNhan ( hoten,SDT,namSinh,gioiTinh,diaChi,email,IDRole)VALUES ( ?,?,?,?,?,?,?)";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            
            st.setString(1, hoten);
            st.setInt(2,SDT);
            st.setInt(3,namSinh);
            st.setString(4,gioiTinh);
            st.setString(5,diachi);
            st.setString(6,email);
            st.setInt(7,2);
            st.executeUpdate();
        }catch(SQLException e){
            System.out.println(e);
        }
        
        
    }
    
    public List<BenhNhan> getAll(){
        List<BenhNhan> list = new ArrayList<>();
        String sql = "select * from BenhNhan ";
        
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                BenhNhan c = new BenhNhan();
                
                c.setIDBenhNhan(rs.getString("IDBenhNhan"));
                c.setHoten(rs.getString("hoten"));
               
              
                c.setUsername(rs.getString("username"));
                c.setPassword(rs.getString("password"));
                c.setNamSinh(rs.getInt("namSinh"));
                c.setDiaChi(rs.getString("diaChi"));
                c.setSDT(rs.getInt("SDT"));
                c.setEmail(rs.getString("email"));
                c.setGioiTinh(rs.getString("gioiTinh"));
                c.setIDRole(rs.getInt("IDRole"));
               
                list.add(c);
            }
            
        }catch(SQLException e){
            System.out.println(e);
            
        }
        
        return list;   
    }
    
     public void delete(String id){
        String sql = "delete from BenhNhan where IDBenhNhan =?";
        
        
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            st.executeUpdate();
        }catch(SQLException e){
            System.out.println(e);
        }
    }
     
     public BenhNhan getBenhNhanById(String id){
        String sql = "select * from BenhNhan where IDBenhNhan = ?";
        
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1,id);
           
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                BenhNhan c = new BenhNhan();
                 c.setIDBenhNhan(rs.getString("IDBenhNhan"));
                c.setHoten(rs.getString("hoten"));
               
              
                c.setUsername(rs.getString("username"));
                c.setPassword(rs.getString("password"));
                c.setNamSinh(rs.getInt("namSinh"));
                c.setDiaChi(rs.getString("diaChi"));
                c.setSDT(rs.getInt("SDT"));
                c.setEmail(rs.getString("email"));
                c.setGioiTinh(rs.getString("gioiTinh"));
                c.setIDRole(rs.getInt("IDRole"));
               
                
                return c;
            }
        }catch(SQLException e){
            System.out.println(e);
        
        }
        return null;
    }
     
     public void update(String id, String name,  int year, String address, int sdt, String email, String sex){
        String sql ="update BenhNhan " +
                        "set hoten = ? ,"+
                        "  namSinh = ?, diaChi = ?," +
                        "	SDT =?, gioiTinh = ?," +
                        "	email = ?" +
                        "    \n" +
                        "where IDBenhNhan = ?";
        
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
           
            st.setInt(2, year);
            st.setString(3, address);
            st.setInt(4, sdt);
            st.setString(6, email);
            st.setString(5, sex);
            st.setString(7, id);
            
            
            st.executeUpdate();
        }catch(SQLException e){
            System.out.println(e);
        }
    }
     
      public String login(String username, String pass){
        String sql = "SELECT IDBenhNhan from BenhNhan where username =  ? and password = ?";
        
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1,username);
            st.setString(2,pass);
            ResultSet rs = st.executeQuery();
            
           if(username.equals("admin")&&pass.equals("1234")){
               return "admin";
           }
            
           if(rs.next()){
                 
                String c = rs.getString("IDBenhNhan") ;
                
                return c;
   
            }
            
        }catch(SQLException e){
            System.out.println(e);
        
        }
        return null;
    }
      
       public List<BenhNhan> getListByPage(List<BenhNhan> list, int start, int end){
          ArrayList<BenhNhan> arr = new ArrayList<>();
          for(int i =start;i<end;i++){
              arr.add(list.get(i));
          }
          return arr;
      }
       
//       public void update(BenhNhan c){
//        String sql ="update BenhNhan " +
//                        "set hoten = ? , username= ? ," +
//                        "	password = ? , namSinh = ?, diaChi = ?," +
//                        "	SDT =?, gioiTinh = ?," +
//                        "	email = ?" +
//                        "    \n" +
//                        "where IDBenhNhan = ?";
//        try{
//            PreparedStatement st = connection.prepareStatement(sql);
//            st.setString(1, c.getHoten());
//            st.setString(2, c.getUsername());
//            st.setString(3, c.getP);
//            st.setInt(4, year);
//            st.setString(5, address);
//            st.setInt(6, sdt);
//            st.setString(8, email);
//            st.setString(7, sex);
//            st.setString(9, id);
//        }catch(SQLException e){
//            System.out.println(e);
//        }
//    }
       
       
//    public  static void main(String[] args) {
//        // Đoạn mã thực thi chương trình của bạn ở đây
//        BenhNhanDao c = new BenhNhanDao();
//        c.update("BN001", "abef", 1998, "aqqqq", 1111, "123@gmail.com","Nam");
//        System.out.println("Xin chào, đây là chương trình Java đầu tiên của tôi!");
//    }

}
