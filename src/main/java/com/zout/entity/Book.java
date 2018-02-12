package com.zout.entity;

/**
 *@class_name：Book 
 *@param:book的javabean实体类
 *@return: 
 *@author:Zoutao
 *@createtime:2018年2月10日
 */
public class Book {
	
	  private long bookId; 			//书id
	  private String name; 			//书名
	  private int number; 			//数量
	  private String detail; 		//详情
	  
	  
	public long getBookId() {
		return bookId;
	}
	public void setBookId(long bookId) {
		this.bookId = bookId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	
	@Override
	public String toString() {
		return "Book [bookId=" + bookId + ", name=" + name + ", number=" + number + ", detail=" + detail + "]";
	}
}
