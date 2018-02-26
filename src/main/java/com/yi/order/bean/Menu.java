package com.yi.order.bean;

import java.util.Objects;

public class Menu {
    private int id;
    private String name;
    private String url;
    private int price;

    public Menu() {
    }

    public Menu(int id, String name, String url, int price) {
        this.id = id;
        this.name = name;
        this.url = url;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Menu)) return false;
        Menu menu = (Menu) o;
        return id == menu.id &&
                price == menu.price &&
                Objects.equals(name, menu.name) &&
                Objects.equals(url, menu.url);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, name, url, price);
    }
}
