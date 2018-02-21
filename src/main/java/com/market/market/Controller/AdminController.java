package com.market.market.Controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping("/admin")
@Controller
public class AdminController {

    @RequestMapping("/admin")
    public String admin(){
        return "helloAdmin";
    }



}
