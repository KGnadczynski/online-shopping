package com.kmg.shoppingbackend.dao;

import java.util.List;

import com.kmg.shoppingbackend.dto.Category;

public interface CategoryDAO {

	List<Category> list();
	Category get(int id);
	
	
	
	
	
	
}
