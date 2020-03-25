package com.cn.model;

public class SysUserModel {
    private String systemusername;               //后台用户名
    private String systemuserpassword;           //密码
    private String user_id;                      //用户编号
    private String update_time;                  //创建时间


    public String getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(String update_time) {
        this.update_time = update_time;
    }

    public String getSystemusername() {
        return systemusername;
    }

    public void setSystemusername(String systemusername) {
        this.systemusername = systemusername;
    }

    public String getSystemuserpassword() {
        return systemuserpassword;
    }

    public void setSystemuserpassword(String systemuserpassword) {
        this.systemuserpassword = systemuserpassword;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }
}
