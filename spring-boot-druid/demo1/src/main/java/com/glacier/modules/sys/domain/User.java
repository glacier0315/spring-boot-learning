package com.glacier.modules.sys.domain;

import javax.persistence.*;


/**
 * 用户
 *
 * @author glacier
 * @version 1.0.0
 * @since <pre>2017-03-29</pre>
 */
@Entity
@Table(name = "t_s_user")
public class User extends BaseUser {

    /**
     *
     */
    private static final long serialVersionUID = -7453820457810766645L;
    // 身份证号码
    private String idCardNo;
    // 邮箱
    private String email;
    // 地址
    private String adress;
    // 手机号码
    private String mobilePhone;
    // 办公室电话
    private String officePhone;
    // 城市 ID
    private Province city;

    @Column(name = "id_card_no", length = 50)
    public String getIdCardNo() {
        return idCardNo;
    }

    public void setIdCardNo(String idCardNo) {
        this.idCardNo = idCardNo;
    }

    @Column(name = "email", length = 100)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Column(name = "adress", length = 200)
    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    @Column(name = "mobile_phone", length = 50)
    public String getMobilePhone() {
        return mobilePhone;
    }

    public void setMobilePhone(String mobilePhone) {
        this.mobilePhone = mobilePhone;
    }

    @Column(name = "office_phone", length = 50)
    public String getOfficePhone() {
        return officePhone;
    }

    public void setOfficePhone(String officePhone) {
        this.officePhone = officePhone;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "city_id")
    public Province getCity() {
        return city;
    }

    public void setCity(Province city) {
        this.city = city;
    }

    public static long getSerialversionuid() {
        return serialVersionUID;
    }

    @Override
    public String toString() {
        return "User{" +
                "idCardNo='" + idCardNo + '\'' +
                ", email='" + email + '\'' +
                ", adress='" + adress + '\'' +
                ", mobilePhone='" + mobilePhone + '\'' +
                ", officePhone='" + officePhone + '\'' +
                ", city=" + city +
                ", id='" + id + '\'' +
                ", createTime=" + createTime +
                ", createBy='" + createBy + '\'' +
                ", createName='" + createName + '\'' +
                ", updateTime=" + updateTime +
                ", updateBy='" + updateBy + '\'' +
                ", updateName='" + updateName + '\'' +
                '}';
    }
}
