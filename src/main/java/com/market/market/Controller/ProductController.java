package com.market.market.Controller;


import com.market.market.Entity.Product;
import com.market.market.Service.ProductService;
import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.ManagedBean;
import java.util.Collections;

@Controller
@ManagedBean
@Getter
@Setter
@RequestMapping("/")
public class ProductController {

    @Autowired
    private ProductService productService;

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public ModelAndView index() {
        return new ModelAndView("/index", Collections.singletonMap("products", productService.findAll()));
    }

    @RequestMapping(value = "/showProduct/{id}")
    public ModelAndView edit(@PathVariable int id) {
        Product product = productService.findOne(id);
        return new ModelAndView("showProduct", "command", product);
    }



}
