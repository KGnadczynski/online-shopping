package com.kmg.shoppingbackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kmg.shoppingbackend.dao.CategoryDAO;
import com.kmg.shoppingbackend.dto.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

	
	@Autowired
	private SessionFactory sessionFactory;
	
	private static List<Category> categories = new ArrayList<>();
	
	
	static {
		
		//first category
		Category category = new Category();
		
		category.setId(1);
		category.setName("Television");
		category.setDescription("This is description for TV");
		category.setImageURL("CAT_1.png");
		
		categories.add(category);
		//second category
		category = new Category();
		
		category.setId(2);
		category.setName("Mobile");
		category.setDescription("This is description for mobile");
		category.setImageURL("CAT_1.png");
		
		categories.add(category);
		//third category
		category = new Category();
		
		category.setId(3);
		category.setName("Laptop");
		category.setDescription("This is description for laptop");
		category.setImageURL("CAT_1.png");
		
		categories.add(category);
	}
	
	
	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub
		return categories;
	}


	@Override
	public Category get(int id) {
		
		for(Category category : categories) {
			if(category.getId() == id) return category;
		}
		
		return null;
	}


	@Override
	@Transactional
	public boolean add(Category category) {
		
		try {
			sessionFactory.getCurrentSession().persist(category);
			return true;
		}
		catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
		
		
	}

}
