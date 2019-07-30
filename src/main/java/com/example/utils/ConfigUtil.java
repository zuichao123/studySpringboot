package com.example.utils;

import java.io.FileNotFoundException;

/**
 * 读取配置文件
 */
public class ConfigUtil {
//    private static YamlFile yamlFile;
//
//    public static String getValue(String key) throws FileNotFoundException {
//        if (StringUtils.isBlank(key)){
//            return "";
//        }
//        if (yamlFile == null){
//            File jarFile = new ApplicationHome(ConfigUtil.class).getSource();
//            String path = jarFile.getParent() + "/application.yml";
//            yamlFile = new YamlFile(path);
//
//            if(yamlFile.exists() == Boolean.FALSE){
//                path = jarFile.getAbsolutePath() + "/application.yml";
//                yamlFile = new YamlFile(path);
//            }
//        }
//
//        if (yamlFile.exists()){
//            try {
//                yamlFile.load();
//            } catch (InvalidConfigurationException e) {
//                e.printStackTrace();
//            } catch (IOException e) {
//                throw new FileNotFoundException();
//            }
//        }else {
//            throw new FileNotFoundException();
//        }
//
//        Object obj = yamlFile.get(key);
//        return obj == null?"":obj.toString();
//    }

    public static void main(String[] args) throws FileNotFoundException {
//        System.out.printf(getValue("server.port"));
    }
}
