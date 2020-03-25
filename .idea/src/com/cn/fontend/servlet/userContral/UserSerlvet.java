package com.cn.fontend.servlet.userContral;

/**
 * 前台用户模块
 * 用户登录（已实现）
 * 用户修改（已实现）
 * 编写人：刘冰文
 */

import com.cn.util.BaseServlet;
import com.cn.fontend.dao.UserDao;
import com.cn.model.UserModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.*;
import java.sql.SQLException;
import java.text.SimpleDateFormat;


@WebServlet("/fontend/user")
public class UserSerlvet extends BaseServlet {

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
                modifyUser(req);
                break;
            case "create":
                createUser(req);
                break;
            default:
                break;
        }


    }



    private void modifyUser(HttpServletRequest req) {

    }



    private void createUser(HttpServletRequest req) {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String name = req.getParameter("name");
        String age = req.getParameter("age");
        String sex = req.getParameter("sex");
        String idcard = req.getParameter("idcard");
        String address = req.getParameter("address");
        String phone = req.getParameter("phone");
        String email = req.getParameter("email");
        String postnumber = req.getParameter("postnumber");

        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String create_time =format.format(new Date());

        UserDao userDao = new UserDao(getJdbcUrl(), getDBUsername(), getDBPassword());

        try {
            UserModel user = new UserModel();

            user.setUsername(username);
            user.setPassword(password);
            user.setName(name);
            user.setSex(sex);
            user.setAge(age);
            user.setIdcard(idcard);
            user.setAddress(address);
            user.setPhone(phone);
            user.setEmail(email);
            user.setPostnumber(postnumber);
            user.setCreate_time(create_time);
            boolean b = userDao.insertUser(user);
            System.out.println(user.getCreate_time()+"创建用户是否成功" + b);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }



    private void loginUser(HttpServletRequest req, HttpServletResponse resp) {
        String uname = req.getParameter("username");
        String upassword = req.getParameter("password");
        System.out.println(getClass().getSimpleName() + uname + upassword);

        UserDao userDao = new UserDao(getJdbcUrl(), getDBUsername(), getDBPassword());
        try {
            UserModel user = new UserModel();
            user.setUsername(uname);
            user.setPassword(upassword);

            boolean b = userDao.selectUser(user);
            System.out.println("登录是否成功" + b);
            if(b){
                req.getSession().setAttribute("user",user);
                resp.sendRedirect("frame/main.jsp");
            }

            else{
                req.setAttribute("msg","用户名或密码错误!");
                RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
                dispatcher.forward(req,resp);
            }

        } catch (SQLException | IOException | ServletException e) {
            e.printStackTrace();
        }

    }



}
