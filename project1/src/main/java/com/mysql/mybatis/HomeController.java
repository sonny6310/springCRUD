package com.mysql.mybatis;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mysql.mybatis.board.boardDTO;
import com.mysql.mybatis.service.boardService;

@Controller
public class HomeController {

	@Autowired
	boardService bservice;

	@RequestMapping(value = "/home.ws", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	@RequestMapping(value = "/select.ws", method = RequestMethod.GET)
	public String select(Locale locale, Model model) {
		List<boardDTO> list = bservice.select();
		model.addAttribute("list", list);

		return "select";
	}

	@RequestMapping(value = "/insert.ws", method = RequestMethod.GET)
	public String insert(Locale locale, Model model) {

		return "insert";
	}

	@RequestMapping(value = "/insert.ws", method = RequestMethod.POST)
	public String insertpost(Locale locale, Model model, boardDTO bdto) {
		bservice.insert(bdto);
		System.out.println(bdto);

		return "redirect:select.ws";
	}

	@RequestMapping(value = "/update.ws", method = RequestMethod.GET)
	public String update(Locale locale, Model model, @RequestParam int id) {
		List<boardDTO> list = bservice.selectOne(id);
		model.addAttribute("list", list);
		return "update";
	}

	@RequestMapping(value = "/update.ws", method = RequestMethod.POST)
	public String updatepost(Locale locale, Model model, boardDTO bdto) {
		bservice.update(bdto);

		return "redirect:select.ws";
	}

	@RequestMapping(value = "/delete.ws", method = RequestMethod.POST)
	public String deletepost(Locale locale, Model model, @RequestParam int id) {
		bservice.delete(id);

		return "redirect:select.ws";
	}

	@RequestMapping(value = "/content.ws", method = RequestMethod.GET)
	public String content(Locale locale, Model model, @RequestParam int id) {
		List<boardDTO> list = bservice.selectOne(id);
		model.addAttribute("list", list);

		return "content";
	}
}
