package com.cn.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BaseDao {
    /**
     * 数据库密码
     */
    private final String dbPassword;
    /**
     * 数据库连接地址
     */
    private final String jdbcUrl;
    /**
     * 数据库用户名
     */
    private final String dbUsername;
    /**
     * 数据库的连接实例（对象）
     */
    private Connection connection;

    public BaseDao(String jdbcUrl, String dbUsername, String dbPassword) {
        this.jdbcUrl = jdbcUrl;
        this.dbUsername = dbUsername;
        this.dbPassword = dbPassword;
    }

    /**
     * 连接数据库
     * @throws SQLException
     */
    public void connect() throws SQLException {
        //1.能操作数据库的工具jdbc
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        connection = DriverManager.getConnection(jdbcUrl, dbUsername, dbPassword);
    }

    /**
     * 断开数据库连接
     * @throws SQLException
     */
    public void disconnect() throws SQLException {
        if (null!=connection && !connection.isClosed()){
            connection.close();
        }
    }

    /**
     * 获取数据库实例对象
     * @return Connection
     */
    protected Connection getDaoConnection(){
        return connection;
    }

}
