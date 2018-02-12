package com.zout.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zout.dao.BookDao;
import com.zout.entity.Book;
import com.zout.service.BookService;

/**
 *@class_name：BookServiceImpl  
 *@param:业务逻辑接口的实现类
 *@return: 
 *@author:Zoutao
 *@createtime:2018年2月10日
 */
@Service
public class BookServiceImpl implements BookService {
  @Autowired
  private BookDao bookDao;

  @Override
  public Book getById(long bookId) {
    return bookDao.queryById(bookId);
  }

  @Override
  public List<Book> getList(int start, int pageNum) {
    return bookDao.queryAll(start, pageNum);
  }

  @Override
  public int addBook(Book book) {
    return bookDao.addBook(book);
  }

  @Override
  public int updateBook(Book book) {
    return bookDao.updateBook(book);
  }

  @Override
  public int deleteBookById(long id) {
    return bookDao.deleteBookById(id);
  }
}
