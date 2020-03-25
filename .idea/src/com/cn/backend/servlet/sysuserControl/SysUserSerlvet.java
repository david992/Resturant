package com.cn.backend.servlet.sysuserControl;

/**
 * 后台系统用户模块
 * 用户登录（已实现）
 * 用户修改（已实现）
 * 编写人：刘冰文
 */

import com.cn.backend.dao.SysUserDao;
import com.cn.model.SysUserModel;
import com.cn.util.BaseServlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;


@WebServlet("/backend/user")
public class SysUserSerlvet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String method = req.getParameter("method");
        switch (method) {
            case "login":
                loginUser(req, resp);
                break;
            case "update":
                modifyUser(req, resp);
                break;
            default:
                break;
        }


    }



    private void loginUser(HttpServletRequest req, HttpServletResponse resp) {
        String name = req.getParameter("systemusername");
        String password = req.getParameter("systemuserpassword");
        System.out.println(getClass().getSimpleName() + name + password);

        SysUserDao userDao = new SysUserDao(getJdbcUrl(), getDBUsername(), getDBPassword());
        try {
            SysUserModel user = new SysUserModel();
            user.setSystemusername(name);
            user.setSystemuserpassword(password);

            boolean b = userDao.selectUser(user);
            System.out.println("登录是否成功" + b);
            if(b){
                req.getSession().setAttribute("user",user);
                resp.sendRedirect("main.html");
            }

            else{
                req.setAttribute("msg","用户名或密码错误!");
                RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
                dispatcher.forward(req,resp);
            }
        } catch (SQLException | IOException | ServletException e) {
            e.printStackTrace();
        }

    }

    private void modifyUser(HttpServletRequest req, HttpServletResponse resp) {
        String uname = req.getParameter("username");
        System.out.println(uname);
        String upassword = req.getParameter("password");
        System.out.println(upassword);
        String uid = req.getParameter("id");
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String update_time =format.format(new Date());

        SysUserDao userDao = new SysUserDao(getJdbcUrl(), getDBUsername(), getDBPassword());
        try {
            SysUserModel user = new SysUserModel();

            user.setSystemusername(uname);
            user.setSystemuserpassword(upassword);
            user.setUser_id(uid);
            user.setUpdate_time(update_time);
            boolean b = userDao.updateUser(user);
            System.out.println("修改用户是否成功" + b);
            if(b){
                resp.sendRedirect("user.jsp");
            }
            else resp.sendRedirect("user.jsp");
        } catch (SQLException | IOException e) {
            e.printStackTrace();
        }

    }
}
