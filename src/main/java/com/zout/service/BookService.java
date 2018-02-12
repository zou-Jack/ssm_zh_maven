package com.zout.service;

import java.util.List;
import com.zout.entity.Book;

/**
 *@class_name：BookService  
 *@param: 业务逻辑处理接口
 *@return: 
 *@author:Zoutao
 *@createtime:2018年2月10日
 */
public interface BookService {
	
	  Book getById(long bookId);
	  //查询-带参数
	  List<Book> getList(int start, int pageNum);
	  //添加
	  int addBook(Book book);
	  //更新
	  int updateBook(Book book);
	  //删除
	  int deleteBookById(long id);	
	  
}
