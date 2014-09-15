package com.saintecaires.test;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.luis.basic.util.IbatisBuilder;
import org.luis.sainteclaires.base.bean.ProductVo;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {
	public static void main(String[] args) throws SQLException {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring-context.xml");
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("start", 0);
		map.put("length", 10);
		List<ProductVo> list = (List<ProductVo>) IbatisBuilder.queryForList("product.findProductByPage", map);
		System.out.println(list);
	}
}
