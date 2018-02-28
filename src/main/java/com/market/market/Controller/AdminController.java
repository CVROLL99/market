package com.market.market.Controller;


import com.market.market.Entity.Product;
import com.market.market.Service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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

    @RequestMapping(value = "/addNew")
    public ModelAndView showform() {
        return new ModelAndView("/addNew", "command", new Product());
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute("product") Product product) {
        productService.save(product);
        return new ModelAndView("redirect:/admin");
    }

    @RequestMapping(value = "/deleteprod/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable int id) {
        productService.delete(id);
        return new ModelAndView("redirect:/admin");
    }


    @RequestMapping(value = "/editform/{id}")
    public ModelAndView edit(@PathVariable int id) {
        Product product = productService.findOne(id);
        return new ModelAndView("editform", "command", product);
    }

    /* It updates model object. */
    @RequestMapping(value = "/editsave", method = RequestMethod.POST)
    public ModelAndView editsave(@ModelAttribute("product") Product product) {
        //productService.save(product);
        return new ModelAndView("redirect:/admin");
    }


}
