package com.cn.backend.servlet.menuControl;

/**
 * 后台菜单模块中，对上传图片的处理
 * （添加菜单及修改菜单时的图片文件）
 * 编写人：刘冰文
 */


import com.cn.model.MenuModel;
import com.oreilly.servlet.MultipartRequest;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Enumeration;

@WebServlet("/backend/menu/upload")
public class Upload extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Upload() {
        super();
    }

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doPost(HttpServletRequest req,
                          HttpServletResponse resp) throws ServletException, IOException {
        // 真正使用的是：工程名/upload
        String path = this.getServletContext().getRealPath("upload/");

        MultipartRequest res = new MultipartRequest(req, path, 1024 * 1024, "utf-8");
        Enumeration enu = res.getFileNames();
        String filename = null;
        while (enu.hasMoreElements()) {
            // 上传文件文本框的名字
            filename = (String) enu.nextElement();
            // 获得图片的名字
            filename = res.getFilesystemName(filename);
        }

        Enumeration e = res.getParameterNames();
        while (e.hasMoreElements()) {

           String s = (String) e.nextElement();
           System.out.println(s);
          String[] str = res.getParameterValues(s);
          for(int i=0;i<str.length;i++){
              System.out.println(str[i]);
          }
        }
        String food_name = res.getParameter("food_name");
        String material = res.getParameter("material");
        String price = res.getParameter("price");
        String vip_price = res.getParameter("vip_price");
        String des = res.getParameter("des");
        String food_class_id = res.getParameter("food_class_id");
        String food_img_name = filename;

        MenuModel food = new MenuModel();

        food.setPrice(price);
        food.setFood_img_name(food_img_name);
        food.setFood_name(food_name);
        food.setMaterial(material);
        food.setVip_price(vip_price);
        food.setDes(des);
        food.setFood_class_id(food_class_id);

        System.out.println(  " 添加菜单：" + food.getFood_name() + food.getPrice() + food.getMaterial() + food.getDes() + food.getVip_price() + food.getFood_class_id() + food.getFood_img_name());

        req.getSession().setAttribute("food", food);// 放到request范围
        req.getRequestDispatcher("/backend/addmenu").forward(req, resp);
    }

}
