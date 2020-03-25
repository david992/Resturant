package com.cn.fontend.servlet.userContral;


/**
 * 前台系统用户模块
 * 用户注销（已实现）
 * 编写人：刘冰文
 */

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/fontend//logout")
public class LogoutSerlvet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);

        session.removeAttribute("user");
        try {

            System.out.println("注销成功" );
            resp.sendRedirect("index.jsp");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


}
