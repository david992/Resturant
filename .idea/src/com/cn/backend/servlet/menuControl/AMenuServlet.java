package com.cn.backend.servlet.menuControl;


/**
 * 后台菜单模块
 * 添加菜单，其中包括对上传图片的处理
 * 编写人：刘冰文
 */

import com.cn.backend.dao.MenuDao;
import com.cn.model.MenuModel;
import com.cn.util.BaseServlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/backend/addmenu")
public class AMenuServlet extends BaseServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String create_time =format.format(new Date());

       String food = req.getParameter("food");
        MenuDao menuDao = new MenuDao(getJdbcUrl(), getDBUsername(), getDBPassword());
        try {
            MenuModel menu = (MenuModel)req.getSession().getAttribute("food");
            menu.getFood_name();
            menu.setCreate_time(create_time);
            System.out.println( create_time + "  添加菜单：" + menu.getFood_name());
            boolean b = menuDao.createMenu(menu);
            System.out.println("是否成功：" + b);
            resp.sendRedirect("menulist.jsp");

        } catch ( SQLException | IOException  e) {
            e.printStackTrace();
        }
    }
}
