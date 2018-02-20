package com.market.market.Service;

import com.market.market.Entity.Product;
import org.springframework.data.repository.CrudRepository;

public interface ProductService extends CrudRepository <Product, Integer> {


}
