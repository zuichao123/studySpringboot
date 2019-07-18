package com.example.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/**
 * @author ly
 * @Description
 * @Date 2019-02-20 17:22
 * @description: 随机
 */
public class RandomUtil {
    private static int getRandom(int count) {
        return (int) Math.round(Math.random() * (count));
    }

    private static String string = "abcdefghijklmnopqrstuvwxyzABCDEFGHIGKLMNOPQRSTUVWXYZ0123456789";

    public static String getRandomString(int length) {
        StringBuffer sb = new StringBuffer();
        int len = string.length();
        for (int i = 0; i < length; i++) {
            sb.append(string.charAt(getRandom(len - 1)));
        }
        return sb.toString();
    }

    /**
     * @Author ly
     * @Description 返回去掉-的uuid
     * @Date 2019-03-01 15:22
     * @Param []
     * @return java.lang.String
     **/
    public static String getUUID() {
        return UUID.randomUUID().toString().replaceAll("-", "");
    }

    /**
     * 返回毫秒值
     * @return
     */
    public static String getMillisecondStr(){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
        return sdf.format(new Date());
    }

    public static void main(String[] args) {
        System.out.println(getMillisecondStr());
        System.out.printf(getUUID()+"\n");
        System.out.printf(getRandom(14)+"\n");
        System.out.printf(getRandomString(6));
    }
}
