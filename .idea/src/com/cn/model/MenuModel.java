package com.cn.model;



public class MenuModel {
    private String id;                      //菜品编号
    private String food_name;               //菜品名称
    private String material;                //食材
    private String price;                   //市场价格
    private String vip_price;               //会员价格
    private String des;                    //说明
    private String food_img_name;           //菜品图片名
    private String food_class_id;           //菜的类型编号
    private String create_time;             //创建时间
    private String update_time;             //修改时间




    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFood_name() {
        return food_name;
    }

    public void setFood_name(String food_name) {
        this.food_name = food_name;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String parice) {
        this.price = price;
    }

    public String getVip_price() {
        return vip_price;
    }

    public void setVip_price(String vip_price) {
        this.vip_price = vip_price;
    }


    public String getFood_img_name() {
        return food_img_name;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public void setFood_img_name(String food_img_name) {
        this.food_img_name = food_img_name;
    }

    public String getFood_class_id() {
        return food_class_id;
    }

    public void setFood_class_id(String food_class_id) {
        this.food_class_id = food_class_id;
    }

    public String getCreate_time() {
        return create_time;
    }

    public void setCreate_time(String create_time) {
        this.create_time = create_time;
    }

    public String getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(String update_time) {
        this.update_time = update_time;
    }
}
