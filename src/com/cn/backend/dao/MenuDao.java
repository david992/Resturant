package com.cn.backend.dao;

/**
 * 后台菜单DAO
 * 菜单索引、添加、修改、删除
 * 编写人：刘冰文
 */

import com.cn.model.MenuModel;
import com.cn.util.BaseDao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class MenuDao extends BaseDao {

    public MenuDao(String jdbcUrl, String dbUsername, String dbPassword) {
        super(jdbcUrl, dbUsername, dbPassword);
    }

    public List<MenuModel> listMenus() throws SQLException {
        List<MenuModel> menulists = new ArrayList<MenuModel>();
        String sql = "SELECT * FROM menu_list";

        connect();
        Statement statement = getDaoConnection().createStatement();
        ResultSet resultSet = statement.executeQuery(sql);
        while (resultSet.next()) {
//            System.out.println(getClass().getSimpleName() + ":" + resultSet.getString("name"));
            MenuModel menuModel = new MenuModel();
            menuModel.setId(resultSet.getString("id"));
            menuModel.setFood_name(resultSet.getString("food_name"));
            menuModel.setFood_img_name(resultSet.getString("food_img_name"));
            menuModel.setMaterial(resultSet.getString("material"));
            menuModel.setDes(resultSet.getString("des"));
            menuModel.setPrice(resultSet.getString("price"));
            menuModel.setVip_price(resultSet.getString("vip_price"));
            menulists.add(menuModel);
        }
        disconnect();
        return menulists;
    }


    public boolean createMenu(MenuModel menu) throws SQLException {
        String sql = "INSERT INTO menu_list(food_name,material,price,vip_price,des,food_class_id,food_img_name,create_time) VALUES(?,?,?,?,?,?,?,?)";

        connect();
        PreparedStatement statement = getDaoConnection().prepareStatement(sql);
        statement.setString(1, menu.getFood_name());
        statement.setString(2, menu.getMaterial());
        statement.setString(3, menu.getPrice());
        statement.setString(4, menu.getVip_price());
        statement.setString(5, menu.getDes());
        statement.setString(6, menu.getFood_class_id());
        statement.setString(7, menu.getFood_img_name());
        statement.setString(8, menu.getCreate_time());

        boolean isSuccessful = statement.executeUpdate() > 0;
        statement.close();
        disconnect();
        return isSuccessful;
    }

    public boolean deleteMenu(String id) throws SQLException {
        String sql = "DELETE FROM menu_ WHERE id=?";

        connect();
        PreparedStatement statement = getDaoConnection().prepareStatement(sql);
        statement.setString(1, id);
        boolean isSuccessful = statement.executeUpdate() > 0;
        statement.close();
        disconnect();

        return isSuccessful;
    }

    public boolean updateMenu(MenuModel menu) throws SQLException {
        String sql = "UPDATE menu_list set food_name=?,material=?,price=?,vip_price=?,des=?,food_class_id=?,food_img_name=?,update_time=?";
        sql += "WHERE id=?";


        connect();
        PreparedStatement statement = getDaoConnection().prepareStatement(sql);
        statement.setString(1, menu.getFood_name());
        statement.setString(2, menu.getMaterial());
        statement.setString(3, menu.getPrice());
        statement.setString(4, menu.getVip_price());
        statement.setString(5, menu.getDes());
        statement.setString(6, menu.getFood_class_id());
        statement.setString(7, menu.getFood_img_name());
        statement.setString(8, menu.getCreate_time());
        statement.setString(9, menu.getId());
        boolean isSuccessful = statement.executeUpdate() > 0;
        statement.close();
        disconnect();
        return isSuccessful;
    }
}