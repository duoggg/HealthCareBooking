/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author DELL
 */
public class LichLamViec {
    int IDLich;
    private String IDBacSi;
    int  IDCa;
   
    private String Ngay;
     int soLuong;
   int soluongMax;
   public LichLamViec() {
    }
   public LichLamViec(int IDLich, String IDBacSi,int IDCa, String Ngay, int soLuong ,  int soluongMax) {
        this.IDBacSi = IDBacSi;
        this.IDLich = IDLich;
        this.IDCa = IDCa;
    //    this.IDRole = IDRole;
        this.Ngay= Ngay;
        this.soLuong = soLuong;
        this.soluongMax = soluongMax;
        
    }

    public int getIDLich() {
        return IDLich;
    }

    public void setIDLich(int IDLich) {
        this.IDLich = IDLich;
    }

    public String getIDBacSi() {
        return IDBacSi;
    }

    public void setIDBacSi(String IDBacSi) {
        this.IDBacSi = IDBacSi;
    }

    public int getIDCa() {
        return IDCa;
    }

    public void setIDCa(int IDCa) {
        this.IDCa = IDCa;
    }

    public String getNgay() {
        return Ngay;
    }

    public void setNgay(String Ngay) {
        this.Ngay = Ngay;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public int getSoluongMax() {
        return soluongMax;
    }

    public void setSoluongMax(int soluongMax) {
        this.soluongMax = soluongMax;
    }

}
