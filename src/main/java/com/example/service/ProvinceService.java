package com.example.service;

public interface ProvinceService {
    //根据指定的省ID查找省名字
    String selectProvinceNameBypId(String pId);

    //查询当前所有的省条数
    int selectProvinceCount();

    //查询所有的省
    void selectAllProvince();
}
