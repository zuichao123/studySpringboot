package com.example.service;

import com.example.dto.PageRel;
import com.example.entry.Admin;

import java.util.List;

public interface AdminService {

    Admin checkLogin(String name);

    List<Admin> queryAllDataFromTable(int page, int limit, String keyWord) ;

    int queryAllCount(String name) ;

    PageRel addAdmin(Admin admin) ;

    int delAdmin(String id);

    //根据前端页面点击“编辑”按钮时的人员id参数，请求查找到该人员，返回到界面中显示
    Admin selectAdminById(String id) ;

    //编辑人员
    PageRel edit(Admin admin);

    Admin selectAdminByName(String name);

    PageRel editPassword(String id, String newPassword);

}
