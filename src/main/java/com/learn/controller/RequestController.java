/*
       Author: Mostafijur Rahman
      Date: 10/21/2020
      Time: 5:08 PM
*/
package com.learn.controller;


import com.learn.dao.TodoDao;
import com.learn.model.Todo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import java.util.Date;
import java.util.List;


@Controller
public class RequestController {

    @Autowired
    ServletContext context;

    @Autowired
    public TodoDao todoDao;


    @RequestMapping(value = "/home")
    public String Hello() {
        ModelAndView modelAndView = new ModelAndView();
        List<Todo> todos = this.todoDao.getAll();
        modelAndView.addObject("alltodo", todos);
        modelAndView.addObject("page", "home");

        return "home";
    }

    @RequestMapping(value = "/add")
    public String addTodo(Model model) {
        Todo todo = new Todo();
        model.addAttribute("page", "add");
        model.addAttribute("todo", todo);
        return "home";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String saveTodo(@ModelAttribute("todo") Todo todo, Model model) {
        String date = String.valueOf(new Date());
        todo.setDate(date);

        this.todoDao.save(todo);
        model.addAttribute("too", todo);
        model.addAttribute("page", "home");
        System.out.println(todo);
        return "home";
    }


}
