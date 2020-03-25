package com.cn.backend.servlet.menuclassControl;

/**
 * 后台菜单类别模块
 * 菜单类别索引，jsp展现
 * 编写人：刘冰文
 */

import com.cn.backend.dao.MenuClassDao;
import com.cn.model.MenuClassModel;
import com.cn.util.BaseServlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/backend/menu_class/index")
public class MenuClassIndexServlet extends BaseServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        MenuClassDao menuclassDao = new MenuClassDao(getJdbcUrl(), getDBUsername(), getDBPassword());
        try {


            List<MenuClassModel> menuclassModels = menuclassDao.listMenuclass();
            for (MenuClassModel menuclassModel: menuclassModels) {
                System.out.println(getClass().getSimpleName() + menuclassModel.getId() + menuclassModel.getFood_class_name() );
            }

            req.getSession().setAttribute("menuclassModels",menuclassModels);

            RequestDispatcher dispatcher = req.getRequestDispatcher("../menuclass/menuclasslist.jsp");
            dispatcher.forward(req,resp);
        } catch (SQLException | IOException | ServletException e) {
            e.printStackTrace();
        }



    }

}
