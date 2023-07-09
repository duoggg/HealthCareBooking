/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author DELL
 */
public class LichDat {
    int IDLich;
    private String IDBenhNhan ;
    private String Ngay ;
    
     public LichDat() {
    }
     
     
      public LichDat(int IDLich, String IDBenhNhan, String Ngay) {
          this.IDBenhNhan = IDBenhNhan;
          this.IDLich = IDLich;
          this.Ngay = Ngay;
       
    }

    public int getIDLich() {
        return IDLich;
    }

    public void setIDLich(int IDLich) {
        this.IDLich = IDLich;
    }

    public String getIDBenhNhan() {
        return IDBenhNhan;
    }

    public void setIDBenhNhan(String IDBenhNhan) {
        this.IDBenhNhan = IDBenhNhan;
    }

    public String getNgay() {
        return Ngay;
    }

    public void setNgay(String Ngay) {
        this.Ngay = Ngay;
    }
    
    
}

  
