package com.example.utils;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

/**
 * @ClassName : FatherToChildUtil
 * @Description : 利用反射父类给子类赋值
 * @author : sunjian
 * @date : 2019/3/13 20:51
 */
public class FatherToChildUtil {

    public static <T>void fatherToChild(T father,T child) throws Exception {
        if (child.getClass().getSuperclass()!=father.getClass()){
            throw new Exception(child +"不是 "+father+" 的子类");
        }
        Class<?> fatherClass = father.getClass();
        Field[] declaredFields = fatherClass.getDeclaredFields();
        for (int i = 0; i < declaredFields.length; i++) {
            Field field=declaredFields[i];
            Method method=fatherClass.getDeclaredMethod("get"+upperHeadChar(field.getName()));
            Object obj = method.invoke(father);
            field.setAccessible(true);
            field.set(child,obj);
        }
    }

    /**
     * @MethodName upperHeadChar
     * @Description 首字母大写
     * @param codes 字符
     * @author jack
     * @date 2019/3/13 20:52
     * @return java.lang.String
     */
    public static String upperHeadChar(String codes) {
        return codes.substring(0, 1).toUpperCase() + codes.substring(1, codes.length());
    }
}
