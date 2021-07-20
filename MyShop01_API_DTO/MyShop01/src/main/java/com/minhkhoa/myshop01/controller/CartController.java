package com.minhkhoa.myshop01.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.minhkhoa.myshop01.services.ProductServices;
import com.minhkhoa.myshop01.entity.ProductEntity;
import com.minhkhoa.myshop01.global.*;

@RestController
@RequestMapping("/api/cart")
public class CartController {

	private ProductServices productServices;

	@Autowired
	public CartController(ProductServices productServices) {
		super();
		this.productServices = productServices;
	}

	@GetMapping("/cart")
	public String cartGet(Model model) {
		model.addAttribute("cartCount", GlobalData.cart.size());
		model.addAttribute("total", GlobalData.cart.stream().mapToDouble(ProductEntity::getPrice).sum());
		model.addAttribute("cart", GlobalData.cart);
		return "cart";
	}

	@GetMapping("/addToCart/{id}")
    public String addToCart(@PathVariable Long id)
    {
		GlobalData.cart.add(productServices.getProductById(id));
		return "redirect:/home";
    }
	
	@GetMapping("/cart/removeProduct/{id}")
    public String cartProductRemove(@PathVariable Long id)
    {
		GlobalData.cart.remove(id.intValue());
		return "redirect:/cart";
    }
	
	
	 @GetMapping("/checkout")
	    public String checkout(Model model){
	        model.addAttribute("cartCount", GlobalData.cart.size());
	        model.addAttribute("total", GlobalData.cart.stream().mapToDouble(ProductEntity::getPrice).sum());
	        return "checkout";
	 }
	
}
