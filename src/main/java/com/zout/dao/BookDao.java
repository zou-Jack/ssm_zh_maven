package com.zout.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.zout.entity.Book;
/**
 *@class_name：BookDao  
 *@param: book的dao层——数据访问对象
 *@return: 
 *@author:Zoutao
 *@createtime:2018年2月10日
 */

public interface BookDao {
	  //使用mybatis的注解设置参数
	  Book queryById(long id);
	  
	  //查询-附带参数
	  List<Book> queryAll(@Param("offset") int offset, @Param("limit") int limit);
	  //添加
	  int addBook(Book book);
	  //更新
	  int updateBook(Book book);
	  //删除
	  int deleteBookById(long id);

}
