package com.minhkhoa.myshop01.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.minhkhoa.myshop01.entity.OrderDetailEntity;
import com.minhkhoa.myshop01.entity.OrdersEntity;
import com.minhkhoa.myshop01.repository.OrderDetailRepository;
import com.minhkhoa.myshop01.repository.ProductRepository;

@Service
public class OrderDetailServices {
	@Autowired
	private OrderDetailRepository orderDetailRepository;
	@Autowired
	private ProductRepository productRepository;

	// FIND PRODUCT IN CART
	public OrderDetailEntity findProductInCart(Long product_id, OrdersEntity cart) {
		try {
			return cart.getOrderDetails().stream().filter(od -> od.getProducts().getId().equals(product_id)).findFirst()
					.get();

		} catch (Exception e) {
			return null;
		}
	}

	// ADD PRODUCT TO CART

	public void addProductToCart(Long product_id, OrdersEntity cart) {
		OrderDetailEntity orderdetail = findProductInCart(product_id, cart);
		if (orderdetail == null) {
			orderdetail = new OrderDetailEntity();
			orderdetail.setProducts(productRepository.findById(orderdetail.getProducts().getId())
					.orElseThrow(() -> new RuntimeException("Không tìm thấy Id sản phẩm!")));
			;
			orderdetail.setOrders(cart);
			orderdetail.setQuantity(1);
			orderdetail.setProduct_price(orderdetail.getProducts().getPrice());

		}

		else {
			orderdetail.setQuantity(orderdetail.getQuantity() + 1);
		}

		orderDetailRepository.save(orderdetail);
	}

	// MINUS PRODUCT FROM CART

	public void minusProductFromCart(Long product_id, OrdersEntity cart) {
		OrderDetailEntity orderDetail = findProductInCart(product_id, cart);
		if (orderDetail != null) {
			orderDetail.setQuantity(orderDetail.getQuantity() - 1);
			if (orderDetail.getQuantity() <= 0) {
				deleteProductFromCart(product_id, cart);
			} else {
				orderDetailRepository.save(orderDetail);
			}
		}
	}

	// DELETE PRODUCT FROM CART
	public void deleteProductFromCart(Long product_id, OrdersEntity cart) {
		try {
			orderDetailRepository.delete(findProductInCart(product_id, cart));

		} catch (Exception ignored) {
			// TODO: handle exception
		}
	}

}
