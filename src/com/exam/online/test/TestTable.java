package com.exam.online.test;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestTable {
	/**
	 * 该方法用来hibernate反向建表
	 */
	@Test
	public void setUp() {
		//获取spring容器
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");;
		//获取sessionfactory
		SessionFactory sessionFactory = (SessionFactory) ac.getBean("sessionFactory");
		//打开session即在建表
		Session session = sessionFactory.openSession();
		System.out.println("dd");
	}
}
