package com.minhkhoa.myshop01.global;

import java.util.ArrayList;
import java.util.List;

import com.minhkhoa.myshop01.entity.ProductEntity;

public class GlobalData {
	public static List<ProductEntity> cart;
	static {
		cart = new ArrayList<>();
	}

}
