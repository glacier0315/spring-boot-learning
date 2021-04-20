package com.glacier.openapi.entity;

import java.io.Serializable;
import java.time.LocalDate;

/**
 * @author glacier
 * @version 1.0
 * @date 2021-04-20 16:46
 */
public class User implements Serializable {

    private String id;
    private String name;
    private String sex;
    private LocalDate birthday;
    private double high;
    private double weight;

    public User() {
    }

    public User(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public LocalDate getBirthday() {
        return birthday;
    }

    public void setBirthday(LocalDate birthday) {
        this.birthday = birthday;
    }

    public double getHigh() {
        return high;
    }

    public void setHigh(double high) {
        this.high = high;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }
}
