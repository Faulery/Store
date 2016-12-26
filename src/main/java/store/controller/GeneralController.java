package store.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import store.dto.DTOUtilMapper;
import store.service.LaptopService;
import store.service.MailSenderService;

@Controller
public class GeneralController {

    @Autowired
    private LaptopService laptopService;

    @Autowired
    private MailSenderService mailSenderService;

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
    public String shop(Model model) {
        model.addAttribute("laptopsDTOs", DTOUtilMapper.laptopsToLaptopsDTO(laptopService.findAll()));
        return "shop";
    }

    @RequestMapping(value = "/", method = RequestMethod.POST)
    public String loginprosecing() {
        return "redirect:/";
    }

    @RequestMapping(value = "/signIn")
    public String login() {
        return "loginform";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    public String logout() {
        return "redirect:/";
    }

    @RequestMapping(value = "/newsletter", method = RequestMethod.GET)
    public String sendMail(String mail) {
        mailSenderService.newsletter(mail);
        return "redirect:/";
    }
}
