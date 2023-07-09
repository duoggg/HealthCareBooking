/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author DELL
 */
public class BenhNhan {
    
     private String IDBenhNhan;
    private String hoten;
    private String username;
    private String  password;
    private int namSinh;
    private String diaChi;
    private int SDT;
    private String email;
    private String gioiTinh;
    private int IDRole;
    public BenhNhan() {
    }
    
    public BenhNhan(String IDBenhNhan, String hoten, String username,String password, int namSinh , String diaChi, int SDT, String email,String gioiTinh ) {
        this.IDBenhNhan = IDBenhNhan;
        this.hoten = hoten;
        this.username = username;
       
        this.password = password;
        this.diaChi = diaChi;
        this.namSinh = namSinh;
        this.SDT = SDT;
        this.email = email;
        this.gioiTinh = gioiTinh;
        this.IDRole =2;
    }

    public String getIDBenhNhan() {
        return IDBenhNhan;
    }

    public void setIDBenhNhan(String IDBenhNhan) {
        this.IDBenhNhan = IDBenhNhan;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getNamSinh() {
        return namSinh;
    }

    public void setNamSinh(int namSinh) {
        this.namSinh = namSinh;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public int getSDT() {
        return SDT;
    }

    public void setSDT(int SDT) {
        this.SDT = SDT;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(String gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public int getIDRole() {
        return IDRole;
    }

    public void setIDRole(int IDRole) {
        this.IDRole = IDRole;
    }

    public void getIDBenhNhan(String string) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    
    
}
