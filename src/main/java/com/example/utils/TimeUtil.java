package com.example.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class TimeUtil {

    /**
     * @return 获取指定模板的当前时间
     */
    public static String getCurrentTime(){
        SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return sd.format(new Date());
    }
    public static String getCurrentTimeFormat(String format){
        SimpleDateFormat sd = new SimpleDateFormat(format);
        return sd.format(new Date());
    }

    /**
     * @param begintTime
     * @param endTime
     * @return 获取指定的年月日之间的年-月-日
     */
    public static List<String> getYearMonthDayBetween(String begintTime, String endTime) {

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date dBegin = null;
        Date dEnd = null;
        try {
            dBegin = sdf.parse(begintTime);
            dEnd = sdf.parse(endTime);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        //存放每一天日期String对象的daysStrList
        List<String> daysStrList = new ArrayList<String>();
        //放入开始的那一天日期String
        daysStrList.add(sdf.format(dBegin));

        Calendar calBegin = Calendar.getInstance();
        // 使用给定的 Date 设置此 Calendar 的时间
        calBegin.setTime(dBegin);

        Calendar calEnd = Calendar.getInstance();
        // 使用给定的 Date 设置此 Calendar 的时间
        calEnd.setTime(dEnd);

        // 判断循环此日期是否在指定日期之后
        while (dEnd.after(calBegin.getTime())) {
            // 根据日历的规则，给定的日历字段增加或减去指定的时间量
            calBegin.add(Calendar.DAY_OF_MONTH, 1);
            String dayStr = sdf.format(calBegin.getTime());
            daysStrList.add(dayStr);
        }

        return daysStrList;
    }

    /**
     * @param minDate 最小时间  2015-01
     * @param maxDate 最大时间 2015-10
     * @return 获取指定的年月之间的年-月
     * @throws Exception
     */
    public static List<String> getYearMonthBetween(String minDate, String maxDate) throws Exception {
        ArrayList<String> result = new ArrayList<String>();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");//格式化为年月

        Calendar min = Calendar.getInstance();
        Calendar max = Calendar.getInstance();

        min.setTime(sdf.parse(minDate));
        min.set(min.get(Calendar.YEAR), min.get(Calendar.MONTH), 1);

        max.setTime(sdf.parse(maxDate));
        max.set(max.get(Calendar.YEAR), max.get(Calendar.MONTH), 2);

        Calendar curr = min;
        while (curr.before(max)) {
            result.add(sdf.format(curr.getTime()));
            curr.add(Calendar.MONTH, 1);
        }

        return result;
    }

    /**
     * @param year
     * @param month
     * @return 获取某一月的最后一天
     */
    public static String getLastDayOfMonth(int year,int month) {
        Calendar cal = Calendar.getInstance();
        //设置年份
        cal.set(Calendar.YEAR,year);
        //设置月份
        cal.set(Calendar.MONTH, month-1);
        //获取某月最大天数
        int lastDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
        //设置日历中月份的最大天数
        cal.set(Calendar.DAY_OF_MONTH, lastDay);
        //格式化日期
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String lastDayOfMonth = sdf.format(cal.getTime());

        return lastDayOfMonth;
    }

    public static void main(String[] args) throws Exception {
//        System.out.printf(getCurrentTime() + "\n");
//        System.out.printf(getCurrentTimeFormat("yyyy-MM"));
//        System.out.printf("\n----------\n");
//        List<String> list = getYearMonthBetween("2017-01","2019-01");
//        for(String li:list){
//            System.out.printf(li+"\n");
//        }
//        System.out.printf(getLastDayOfMonth(2019, 2)+"\n");

        List<String> list2 = getYearMonthDayBetween("2011-01-01","2019-01-01");
        for(String li2:list2){
            System.out.printf(li2+"\n");
        }
    }
}
