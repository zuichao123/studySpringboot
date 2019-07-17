package com.example.utils;

import org.apache.commons.lang3.StringUtils;
import org.simpleyaml.configuration.file.YamlFile;
import org.simpleyaml.exceptions.InvalidConfigurationException;
import org.springframework.boot.ApplicationHome;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

/**
 * 读取配置文件
 */
public class ConfigUtil {
    private static YamlFile yamlFile;

    public static String getValue(String key) throws FileNotFoundException {
        if (StringUtils.isBlank(key)){
            return "";
        }
        if (yamlFile == null){
            File jarFile = new ApplicationHome(ConfigUtil.class).getSource();
            String path = jarFile.getParent() + "/application.yml";
            yamlFile = new YamlFile(path);

            if(yamlFile.exists() == Boolean.FALSE){
                path = jarFile.getAbsolutePath() + "/application.yml";
                yamlFile = new YamlFile(path);
            }
        }

        if (yamlFile.exists()){
            try {
                yamlFile.load();
            } catch (InvalidConfigurationException e) {
                e.printStackTrace();
            } catch (IOException e) {
                throw new FileNotFoundException();
            }
        }else {
            throw new FileNotFoundException();
        }

        Object obj = yamlFile.get(key);
        return obj == null?"":obj.toString();
    }

    public static void main(String[] args) throws FileNotFoundException {
        System.out.printf(getValue("server.port"));
    }
}
