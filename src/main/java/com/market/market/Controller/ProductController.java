package com.market.market.Controller;


import com.market.market.Entity.Product;
import com.market.market.Model.ProductModel;
import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import javax.annotation.ManagedBean;
import javax.annotation.PostConstruct;
import java.util.List;

@Controller
@ManagedBean
@Getter
@Setter
public class ProductController {

    private List<Product> productList;

    @Autowired
    private ProductModel productModel;

    @PostConstruct
    public void init() {
        productList = productModel.getAll();
    }

    @Override
    public String toString() {
        return "ProductController{" +
                "productList=" + productList +
                ", productModel=" + productModel +
                '}';
    }
}
