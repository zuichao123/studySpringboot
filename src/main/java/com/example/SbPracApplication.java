package com.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SbPracApplication {

	public static void main(String[] args) {
		SpringApplication.run(SbPracApplication.class, args);
	}
}
/**
 * @RestController:
 *      '@RestController注解等于 :@ResponseBody ＋ @Controller合在一起的作用
 *          如果只是用@RestController注解Controller，则Controller中的方法无法返回jsp/html页面，返回的内容就是Return里的内容
 *          '@RestController中的方法如果想要跳转页面，则用modelAndView进行封装。
 *          返回的值对应的事JSON数据。
 * @Controller:
 *      需要配合@ResponseBody才可以
 *      加有@GetMapping、@PostMapping、@RequestMapping注解的方法返回值对应的是一个视图；
 *
 * @PostMapping:
 *      用于将HTTp Post请求映射到特定处理程序方法的注释，是@RequestMapping(method = RequestMethod.POST)的快捷方式的组合注释。
 * @GetMapping:
 *      用于将HTTp GET请求映射到特定处理程序方法的注释，是@RequestMapping(method = RequestMethod.GET)的快捷方式的组合注释。
 *
 * @RequestMapping:
 *      一般情况下都使用@RequestMapping(method = RequestMethod.),因为@RequestMapping可以直接替代以上的两个注解，但是以上的两个注解不能替代@RequestMapping
 *      '@RequestMapping相当于@PostMapping和@GetMapping的父类。
 *
 * @Component//表明当前类是一个java Bean
 * @ConfigurationProperties(prefix = "student")//表明获取前缀为student的配置信息；在yml配置文件中添加
 *
 * @Autowired//自动装配
 * @Resurce//自动装配
 *
 */