/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author DELL
 */
public class DichVu {
     private int IDService;
    private String ten ;
    private int IDKhoa ;
    private int GiaKham ;
    private String Link;
    
     public DichVu() {
       
    }
     
     
      public DichVu(int IDService, String ten, int IDKhoa, int GiaKham, String Link) {
          this.IDService = IDService;
          this.ten = ten;
          this.IDKhoa = IDKhoa;
          this.GiaKham = GiaKham;
          this.Link = Link;
         
       
    }

    public int getIDService() {
        return IDService;
    }

    public void setIDService(int IDService) {
        this.IDService = IDService;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public int getIDKhoa() {
        return IDKhoa;
    }

    public void setIDKhoa(int IDKhoa) {
        this.IDKhoa = IDKhoa;
    }

    public int getGiaKham() {
        return GiaKham;
    }

    public void setGiaKham(int GiaKham) {
        this.GiaKham = GiaKham;
    }

    public String getLink() {
        return Link;
    }

    public void setLink(String Link) {
        this.Link = Link;
    }
      
}
