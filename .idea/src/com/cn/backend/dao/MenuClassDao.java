package com.cn.backend.dao;

/**
 * 后台菜单类别DAO
 * 菜单类别索引、添加、修改、删除
 * 编写人：刘冰文
 */


import com.cn.model.MenuClassModel;
import com.cn.util.BaseDao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class MenuClassDao extends BaseDao{

    public MenuClassDao(String jdbcUrl, String dbUsername, String dbPassword) {
        super(jdbcUrl, dbUsername, dbPassword);
    }

    public List<MenuClassModel> listMenuclass() throws SQLException {
        List<MenuClassModel> menuclasslists = new ArrayList<MenuClassModel>();
        String sql = "SELECT * FROM menu_class";

        connect();
        Statement statement = getDaoConnection().createStatement();
        ResultSet rs = statement.executeQuery(sql);
        while (rs.next()) {
            MenuClassModel menuclassModel = new MenuClassModel();

            menuclassModel.setId(rs.getString("id"));
            menuclassModel.setFood_class_name(rs.getString("food_class_name"));
            System.out.println("菜单类别: " + menuclassModel.getFood_class_name()+"  ID:"+ menuclassModel.getId());
            menuclasslists.add(menuclassModel);
        }
        rs.close();
        disconnect();
        return menuclasslists;
    }


    public boolean updateMenuclass(MenuClassModel menuclass) throws SQLException {
        String sql = "UPDATE menu_class set food_class_name=?,update_time=?";
        sql += "WHERE id=?";

        connect();
        PreparedStatement statement = getDaoConnection().prepareStatement(sql);
        statement.setString(1, menuclass.getFood_class_name());
        statement.setString(2, menuclass.getUpdate_time());
        statement.setString(3, menuclass.getId());
        boolean isSuccessful = statement.executeUpdate() > 0;
        statement.close();
        disconnect();
        return isSuccessful;
    }

    public boolean createMenuclass(MenuClassModel menuclass) throws SQLException {

        String sql = "INSERT INTO menu_class(food_class_name,create_time) VALUES(?,?)";

        connect();
        PreparedStatement statement = getDaoConnection().prepareStatement(sql);
        statement.setString(1, menuclass.getFood_class_name());
        statement.setString(2, menuclass.getCreate_time());

        boolean isSuccessful = statement.executeUpdate() > 0;
        statement.close();
        disconnect();
        return isSuccessful;
    }

    public boolean deleteMenuClass(String id) throws SQLException {
        String sql = "DELETE FROM menu_class WHERE id=?";

        connect();
        PreparedStatement statement = getDaoConnection().prepareStatement(sql);
        statement.setString(1, id);
        boolean isSuccessful = statement.executeUpdate() > 0;
        statement.close();
        disconnect();

        return isSuccessful;
    }
}
