package com.nit.pang.model.entity;

/**
 * @author Wei
 * @data 2018/11/10 12:16
 */
public class User {

    private Integer uid;

    private String name;

    private String password;

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
