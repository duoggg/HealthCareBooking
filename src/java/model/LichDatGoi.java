/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author DELL
 */
public class LichDatGoi {
     int IDService;
    private String IDBenhNhan ;
    private String Ngay ;
    int IDCa;
    public LichDatGoi() {
    }
    public LichDatGoi(int IDService, String IDBenhNhan, String Ngay, int IDCa) {
          this.IDBenhNhan = IDBenhNhan;
          this.IDService = IDService;
          this.Ngay = Ngay;
          this.IDCa= IDCa;
       
    }

    public int getIDService() {
        return IDService;
    }

    public void setIDService(int IDService) {
        this.IDService = IDService;
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

    public int getIDCa() {
        return IDCa;
    }

    public void setIDCa(int IDCa) {
        this.IDCa = IDCa;
    }
    
}
