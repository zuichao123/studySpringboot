package com.example.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeUtils {
    public static void main(String[] args) {

    }

    /**
     * 获取指定模板的当前时间
     * @return
     */
    public static String getCurrentTime(){
        SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return sd.format(new Date());
    }
}
