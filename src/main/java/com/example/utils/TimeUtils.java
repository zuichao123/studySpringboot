package com.example.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeUtils {
    public static void main(String[] args) {

    }

    public static String getCurrentTime(){
        SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return sd.format(new Date());
    }
}
