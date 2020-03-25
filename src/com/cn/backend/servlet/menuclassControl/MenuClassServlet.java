package com.cn.backend.servlet.menuclassControl;

import com.cn.backend.dao.MenuClassDao;
import com.cn.model.MenuClassModel;
import com.cn.util.BaseServlet;

/**
 * 后台菜单类别模块
 * 菜单类别的create、update、delete接口
 * 编写人：刘冰文
 */


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/backend/menu_class")
public class MenuClassServlet extends BaseServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String method = req.getParameter("method");
        switch (method) {
            case "create":
                createMenuClass(req,resp);
                break;
            case "update":
                modifyMenuClass(req,resp);
                break;
            case "delete":
                deleteMenuClass(req,resp);
                break;

            default:
                break;
        }


    }


    private void createMenuClass(HttpServletRequest req, HttpServletResponse resp) throws UnsupportedEncodingException {

        String food_class_name = req.getParameter("food_class_name");

        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String create_time =format.format(new Date());
        System.out.println( create_time + "  添加菜单类别：" + food_class_name);
        MenuClassDao menuclaassDao = new MenuClassDao(getJdbcUrl(), getDBUsername(), getDBPassword());
        try {
            MenuClassModel menuclass = new MenuClassModel();

            menuclass.setFood_class_name(food_class_name);
            menuclass.setCreate_time(create_time);
            boolean b = menuclaassDao.createMenuclass(menuclass);
            System.out.println("是否成功：" + b);
            resp.sendRedirect("menuclass/menuclasslist.jsp");

        } catch ( SQLException | IOException e) {
            e.printStackTrace();
        }

    }

    private void modifyMenuClass(HttpServletRequest req, HttpServletResponse resp) {

        String food_class_name = req.getParameter("food_class_name");

        String id = req.getParameter("id");
        System.out.println( "修改菜单类别：" + id + food_class_name);
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String update_time =format.format(new Date());

        MenuClassDao menuclaassDao = new MenuClassDao(getJdbcUrl(), getDBUsername(), getDBPassword());
        try {
            MenuClassModel menuclass = new MenuClassModel();

            menuclass.setId(id);
            menuclass.setFood_class_name(food_class_name);
            menuclass.setUpdate_time(update_time);
            boolean b = menuclaassDao.updateMenuclass(menuclass);
            System.out.println("是否成功：" + b);
            resp.sendRedirect("menuclass/menuclasslist.jsp");
        } catch ( SQLException | IOException e) {
            e.printStackTrace();
        }

    }

    private void deleteMenuClass(HttpServletRequest req, HttpServletResponse resp) {
        String id=req.getParameter("id");
        System.out.println("删除菜单类别：" + id);
        MenuClassDao menuclassDao = new MenuClassDao(getJdbcUrl(), getDBUsername(), getDBPassword());
        try {

            boolean b = menuclassDao.deleteMenuClass(id);
            System.out.println("是否成功" + b);
            resp.sendRedirect("menuclass/menuclasslist.jsp");
        } catch (SQLException | IOException e) {
            e.printStackTrace();
        }
    }


}
