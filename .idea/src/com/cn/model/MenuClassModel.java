package com.cn.model;

public class MenuClassModel {
    private String id;                      //菜的类型编号
    private String food_class_name;         //菜的类型
    private String create_time;             //创建时间
    private String update_time;             //修改时间

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFood_class_name() {
        return food_class_name;
    }

    public void setFood_class_name(String food_class_name) {
        this.food_class_name = food_class_name;
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
