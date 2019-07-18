package com.example.run;

import com.example.service.ProvinceService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

@Component
@Order(1)
public class ProvinceCache implements CommandLineRunner {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private ProvinceService provinceService;

    @Override
    public void run(String... strings) throws Exception {
        logger.info("启动执行任务 一 ：缓存省字典数据.");
        provinceService.selectAllProvince();
    }
}
