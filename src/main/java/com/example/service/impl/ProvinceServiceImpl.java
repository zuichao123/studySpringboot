package com.example.service.impl;

import com.example.dao.ProvinceDao;
import com.example.service.ProvinceService;
import com.example.utils.CacheUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

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
        List<String> pName = provinceDao.selectAllProvince();
        List<String> pId = provinceDao.selectAllProvincePId();
        CacheUtil.provinceIdCache.put("provincesId", provinceDao.selectAllProvincePId());
        CacheUtil.provinceCache.put("provinces", provinceDao.selectAllProvince());
    }
}
