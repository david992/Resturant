package com.cn.util;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

public class BaseServlet extends HttpServlet {
    /**
     * 数据库连接地址
     */
    private String jdbcUrl;
    /**
     * 数据库用户名
     */
    private String username;
    /**
     * 数据库密码
     */
    private String password;

    public String getJdbcUrl() {
        return jdbcUrl;
    }

    public String getDBUsername() {
        return username;
    }

    public String getDBPassword() {
        return password;
    }

    @Override
    public void init() throws ServletException {
        jdbcUrl = getServletContext().getInitParameter("jdbcUrl");
        username = getServletContext().getInitParameter("username");
        password = getServletContext().getInitParameter("password");
        System.out.println(getClass().getSimpleName() + ":" + jdbcUrl + username + password);
    }
}
