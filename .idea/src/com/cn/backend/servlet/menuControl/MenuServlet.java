package com.cn.backend.servlet.menuControl;



/**
 * 后台菜单模块
 * 菜单的删除
 * 编写人：刘冰文
 */

import com.cn.backend.dao.MenuClassDao;
import com.cn.backend.dao.MenuDao;
import com.cn.model.MenuModel;
import com.cn.util.BaseServlet;
import com.oreilly.servlet.MultipartRequest;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;

@WebServlet("/backend/menu")
public class MenuServlet extends BaseServlet {

        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            doPost(req, resp);
        }

        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            req.setCharacterEncoding("utf-8");
            String method = req.getParameter("method");
            switch (method) {
                case "create":
                    createMenu(req,resp);
                    break;
                case "update":
                    modifyMenu(req,resp);
                    break;
                case "delete":
                    deleteMenu(req,resp);
                    break;

                default:
                    break;
            }


        }

    private void deleteMenu(HttpServletRequest req, HttpServletResponse resp) {
        String id=req.getParameter("id");
        System.out.println("删除菜单：" + id);
        MenuClassDao menuclassDao = new MenuClassDao(getJdbcUrl(), getDBUsername(), getDBPassword());
        try {

            boolean b = menuclassDao.deleteMenuClass(id);
            System.out.println("是否成功" + b);
            resp.sendRedirect("menu/menulist.jsp");
        } catch (SQLException | IOException e) {
            e.printStackTrace();
        }
    }

    private void modifyMenu(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String update_time =format.format(new Date());
        String food_name = req.getParameter("food_name");
        String material = req.getParameter("material");
        String price = req.getParameter("price");
        String vip_price = req.getParameter("vip_price");
        String des = req.getParameter("des");
        String food_class_id = req.getParameter("food_class_id");

        // 真正使用的是：工程名/upload
        String path = this.getServletContext().getRealPath("upload/");
        System.out.println(path);

        MultipartRequest res = new MultipartRequest(req, path, 1024 * 1024, "utf-8");
        Enumeration enu = res.getFileNames();
        String filename = null;
        while (enu.hasMoreElements()) {
            // 上传文件文本框的名字
            filename = (String) enu.nextElement();
            // 获得图片的名字
            filename = res.getFilesystemName(filename);
        }
        String food_img_name = filename;


        System.out.println( update_time + "  修改菜单：" + food_name);
        MenuDao menuDao = new MenuDao(getJdbcUrl(), getDBUsername(), getDBPassword());
        try {
            MenuModel menu = new MenuModel();

            menu.setFood_img_name(food_img_name);
            menu.setFood_name(food_name);
            menu.setMaterial(material);
            menu.setPrice(price);
            menu.setVip_price(vip_price);
            menu.setDes(des);
            menu.setFood_class_id(food_class_id);
            menu.setCreate_time(update_time);
            boolean b = menuDao.updateMenu(menu);
            System.out.println("是否成功：" + b);
            resp.sendRedirect("menu/menulist.jsp");

        } catch ( SQLException | IOException  e) {
            e.printStackTrace();
        }
    }



    private void createMenu(HttpServletRequest req, HttpServletResponse resp ) throws ServletException,IOException {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String create_time =format.format(new Date());


        MenuDao menuDao = new MenuDao(getJdbcUrl(), getDBUsername(), getDBPassword());
        try {
            MenuModel menu = new MenuModel();

            menu.setCreate_time(create_time);
            System.out.println( create_time + "  添加菜单：" + menu.getFood_name());
            boolean b = menuDao.createMenu(menu);
            System.out.println("是否成功：" + b);
            resp.sendRedirect("menu/menulist.jsp");

        } catch ( SQLException | IOException  e) {
            e.printStackTrace();
        }

    }
}
