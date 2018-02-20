package com.market.market.Model;

import com.market.market.Entity.Product;
import com.market.market.Service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductModel {


    @Autowired
    private ProductService productService;

    public List<Product> getAll() {
        List<Product> productList = new ArrayList<>();
        productService.findAll().forEach(productList::add);
        return productList;
    }
}


