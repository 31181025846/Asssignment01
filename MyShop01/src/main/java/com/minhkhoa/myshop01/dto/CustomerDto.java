package com.minhkhoa.myshop01.dto;

import java.util.Date;

public class CustomerDto {
    private Long id;
    private String name;
    private Date date_of_birth;
    private String mobile;
    private String city;
    private String email;
    private Long Usersid;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDate_of_birth() {
        return date_of_birth;
    }

    public void setDate_of_birth(Date date_of_birth) {
        this.date_of_birth = date_of_birth;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Long getUsersid() {
        return Usersid;
    }

    public void setUsersid(Long usersid) {
        Usersid = usersid;
    }
}
