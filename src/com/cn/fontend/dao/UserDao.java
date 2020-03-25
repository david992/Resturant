package com.cn.fontend.dao;

/**
 * 前台系统用户DAO
 * 用户注册、登录查询的操作
 * （用户信息修改未实现）
 */

import com.cn.util.BaseDao;
import com.cn.model.UserModel;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao extends BaseDao {
    public UserDao(String jdbcUrl, String dbUsername, String dbPassword) {

        super(jdbcUrl, dbUsername, dbPassword);
    }


    public boolean selectUser(UserModel user) throws SQLException {
        String sql = "SELECT *  FROM USERS WHERE username=?";

        connect();
        PreparedStatement statement = getDaoConnection().prepareStatement(sql);
        statement.setString(1, user.getUsername());
        ResultSet rs =  statement.executeQuery();
        if (rs.next()){
            user.setUser_id(rs.getString(1));
            String pass = rs.getString(3);
            boolean isSuccessful = (pass.equals(user.getPassword()));
            return isSuccessful;
        }
        statement.close();
        disconnect();
        return false;
    }


    public boolean insertUser(UserModel user) throws SQLException {
        String sql = "INSERT INTO users(username,password,name,sex,age,idcard,address,phone,email,postnumber,create_time) VALUES(?,?,?,?,?,?,?,?,?,?,?)";

        connect();
        PreparedStatement statement = getDaoConnection().prepareStatement(sql);
        statement.setString(1, user.getUsername());
        statement.setString(2, user.getPassword());
        statement.setString(3, user.getName());
        statement.setString(4, user.getSex());
        statement.setString(5, user.getAge());
        statement.setString(6, user.getIdcard());
        statement.setString(7, user.getAddress());
        statement.setString(8, user.getPhone());
        statement.setString(9, user.getEmail());
        statement.setString(10, user.getPostnumber());
        statement.setString(11, user.getCreate_time());

        boolean isSuccessful = statement.executeUpdate() > 0;
        statement.close();
        disconnect();
        return isSuccessful;
    }
}
