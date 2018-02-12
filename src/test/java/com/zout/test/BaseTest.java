package com.zout.test;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 *@class_name：BookTest  
 *@param:配置spring和junit整合，junit启动时加载springIOC容器 spring-test,junit
 *参考地址：http://blog.csdn.net/u013146766/article/details/77990602
 *@return: 
 *@author:Zoutao
 *@createtime:2018年2月10日
 */
@RunWith(SpringJUnit4ClassRunner.class)
// 告诉junit spring配置文件
@ContextConfiguration({ "classpath:spring/spring-dao.xml", "classpath:spring/spring-service.xml" })
public class BaseTest {

	
}
















