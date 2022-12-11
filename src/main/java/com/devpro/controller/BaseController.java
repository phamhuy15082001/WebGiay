package com.devpro.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.devpro.entities.Category;
import com.devpro.entities.Product;
import com.devpro.repositories.CategoryRepo;
import com.devpro.repositories.ProductRepo;

public abstract class BaseController {
	@Autowired
	CategoryRepo categoryRepo;
	@Autowired  // Dependency Injection và Inversion of Control
	protected
	ProductRepo productRepo;
	@ModelAttribute("categories")
	
	public List<Category> getCategories() {
		return categoryRepo.findAll();
	}
	@ModelAttribute("products")
	public List<Product> getProducts() {
		return productRepo.findAll();
	}
}
// 