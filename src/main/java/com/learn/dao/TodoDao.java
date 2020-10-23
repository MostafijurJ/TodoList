/*
       Author: Mostafijur Rahman
      Date: 10/23/2020
      Time: 10:53 AM
*/
package com.learn.dao;

import com.learn.model.Todo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Component
public class TodoDao {

    @Autowired
    HibernateTemplate hibernateTemplate;

    @Transactional
    public int save(Todo todo){
        Integer i = (Integer) this.hibernateTemplate.save(todo);
        return i;
    }


    public List<Todo> getAll(){
        List<Todo> todos = this.hibernateTemplate.loadAll(Todo.class);

        return todos;
    }
}
