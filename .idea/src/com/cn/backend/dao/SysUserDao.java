package com.cn.backend.dao;

/**
 * 后台系统用户DAO
 * 登录查询、修改信息的操作
 */


import com.cn.model.SysUserModel;
import com.cn.util.BaseDao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SysUserDao extends BaseDao {
    public SysUserDao(String jdbcUrl, String dbUsername, String dbPassword) {

        super(jdbcUrl, dbUsername, dbPassword);
    }


    public boolean selectUser(SysUserModel user) throws SQLException {
        String sql = "SELECT *  FROM SYS_USER WHERE systemusername=?";

        connect();
        PreparedStatement statement = getDaoConnection().prepareStatement(sql);
        statement.setString(1, user.getSystemusername());
        ResultSet rs =  statement.executeQuery();
        if (rs.next()){
            user.setUser_id(rs.getString(1));
            String pass = rs.getString(3);
            boolean isSuccessful = (pass.equals(user.getSystemuserpassword()));

            return isSuccessful;
        }
        statement.close();
        disconnect();
        return false;
    }

    public boolean updateUser(SysUserModel user) throws SQLException {
        String sql = "UPDATE SYS_USER set systemusername=?,systemuserpassword=?,update_time=?";
        sql += "WHERE id=?";

        connect();
        PreparedStatement statement = getDaoConnection().prepareStatement(sql);
        statement.setString(1, user.getSystemusername());
        statement.setString(2, user.getSystemuserpassword());
        statement.setString(3, user.getUpdate_time());
        statement.setString(4, user.getUser_id());
        boolean isSuccessful = statement.executeUpdate() > 0;
        statement.close();
        disconnect();
        return isSuccessful;
    }


}
