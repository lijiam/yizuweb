package cn.com.clt.yizu;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Controller
@SpringBootApplication
@EnableTransactionManagement
@EnableCaching
@MapperScan(basePackages = "cn.com.clt.yizu.mapper")
public class YizuApplication {

	public static void main(String[] args) {
		SpringApplication.run(YizuApplication.class, args);
	}
}
