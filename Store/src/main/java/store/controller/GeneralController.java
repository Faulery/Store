package store.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GeneralController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home() {
        return "home";
    }

    @RequestMapping(value = "/about", method =  RequestMethod.GET)
    public String about() {
        return "about";
    }

    @RequestMapping(value = "/blog", method = RequestMethod.GET)
    public String blog() {
        return "blog";
    }

    @RequestMapping(value = "/contacts", method = RequestMethod.GET)
    public String contacts() {
        return "contacts";
    }

    @RequestMapping(value = "/shop", method = RequestMethod.GET)
    public String shop() {
        return "shop";
    }

    @RequestMapping(value = "/", method = RequestMethod.POST)
    public String loginprosecing() {
        return "redirect:/";
    }

    @RequestMapping(value = "/signIn")
    public String login() {
        return "loginpage";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    public String logout() {
        return "redirect:/";
    }
}
