package com.example.service.impl;

import com.example.dao.ProvinceDao;
import com.example.service.ProvinceService;
import com.example.utils.CacheUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ProvinceServiceImpl implements ProvinceService {
    @Resource
    private ProvinceDao provinceDao;

    @Override
    public String selectProvinceNameBypId(String pId) {
        return provinceDao.selectProvinceNameBypId(pId);
    }

    @Override
    public int selectProvinceCount(){
        return provinceDao.selectProvinceCount();
    }

    @Override
    public void selectAllProvince() {

        CacheUtil.provinceCache.put("provinces", provinceDao.selectAllProvince());
    }
}
