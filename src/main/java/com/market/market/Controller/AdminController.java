package com.market.market.Controller;


import com.market.market.Service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.Collections;


@Controller
public class AdminController {

    @Autowired
    private ProductService productService;

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public ModelAndView admin() {
        return new ModelAndView("/admin", Collections.singletonMap("products", productService.findAll()));
    }



}
