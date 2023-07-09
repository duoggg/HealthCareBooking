/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author DELL
 */
public class Khoa {
     private int IDKhoa;
    private String TenKhoa;
    private String IDTruongKhoa;
    public Khoa() {
    }

    public Khoa(int IDKhoa, String TenKhoa, String IDTruongKhoa) {
        this.IDKhoa = IDKhoa;
        this.TenKhoa = TenKhoa;
        this.IDTruongKhoa = IDTruongKhoa;
    
    }

    public int getIDKhoa() {
        return IDKhoa;
    }

    public void setIDKhoa(int IDKhoa) {
        this.IDKhoa = IDKhoa;
    }

    public String getTenKhoa() {
        return TenKhoa;
    }

    public void setTenKhoa(String TenKhoa) {
        this.TenKhoa = TenKhoa;
    }

    public String getIDTruongKhoa() {
        return IDTruongKhoa;
    }

    public void setIDTruongKhoa(String IDTruongKhoa) {
        this.IDTruongKhoa = IDTruongKhoa;
    }
    
}
