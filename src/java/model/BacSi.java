
package model;


public class BacSi {
    private String IDBacSi;
    private String hoten;
    private int IDKhoa;
    private String  password;
    private int namSinh;
    private String phongKham;
    private int SDT;
    private String email;
    private int IDRole;
    private String link;
    public BacSi() {
    }

    public BacSi(String IDBacSi, String hoten,int IDKhoa, String password, int namSinh , String phongKham, int SDT, String email,  String link) {
        this.IDBacSi = IDBacSi;
        this.hoten = hoten;
        this.IDKhoa = IDKhoa;
    //    this.IDRole = IDRole;
        this.password = password;
        this.phongKham = phongKham;
        this.namSinh = namSinh;
        this.SDT = SDT;
        this.email = email;
        this.link = link;
    }

    public String getIDBacSi() {
        return IDBacSi;
    }

    public void setIDBacSi(String IDBacSi) {
        this.IDBacSi = IDBacSi;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public int getIDKhoa() {
        return IDKhoa;
    }

    public void setIDKhoa(int IDKhoa) {
        this.IDKhoa = IDKhoa;
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

    public String getPhongKham() {
        return phongKham;
    }

    public void setPhongKham(String phongKham) {
        this.phongKham = phongKham;
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

    public int getIDRole() {
        return IDRole;
    }

    public void setIDRole(int IDRole) {
        this.IDRole = IDRole;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    
}
