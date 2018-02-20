package com.market.market.Service;

import com.market.market.Entity.Product;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductService extends CrudRepository<Product, Integer> {


}
