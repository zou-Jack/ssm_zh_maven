package com.zout.web;

import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.zout.entity.Book;
import com.zout.service.BookService;

/**
 * @class_name：BookController
 * @param: 业务控制层-接收页面请求，处理，返回
 * @return:
 * @author:Zoutao
 * @createtime:2018年2月10日
 */
@Controller
@RequestMapping("/book")
public class BookController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private BookService bookService;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	private String list(Model model) {
		List<Book> list = bookService.getList(0, 1000);
		model.addAttribute("list", list);
		return "list";// WEB-INF/jsp/"list".jsp
	}

	@RequestMapping(value = "/detail/{bookId}", method = RequestMethod.GET)
	private String detail(@PathVariable("bookId") Long bookId, Model model) {
		Book book = bookService.getById(bookId);
		model.addAttribute("book", book);
		return "detail";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	@ResponseBody
	private String add(Book book) {
		Book hasBook = bookService.getById(book.getBookId());
		int i = -2;
		if (hasBook == null) {
			i = bookService.addBook(book);
		}
		return i > 0 ? "添加成功" : "添加失败";
	}

	@RequestMapping(value = "/del/{bookId}", method = RequestMethod.GET)
	@ResponseBody
	private String deleteBookById(@PathVariable("bookId") Long id) {
		int i = bookService.deleteBookById(id);
		return i > 0 ? "删除成功success" : "删除失败error";
	}
}
