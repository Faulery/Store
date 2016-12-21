package store.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import store.dto.DTOUtilMapper;
import store.entity.Laptop;
import store.service.LaptopService;
import store.service.UserService;

import java.security.Principal;

@Controller
public class LaptopController {

    @Autowired
    private LaptopService laptopService;

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/addLaptop", method = RequestMethod.GET)
    public String newLaptop(Model model) {
        model.addAttribute("laptops", laptopService.findAll());
        model.addAttribute("laptop", new Laptop());
        return "addLaptop";
    }

    @RequestMapping(value = "/saveLaptop", method = RequestMethod.POST)
    public String saveLaptop(@ModelAttribute Laptop laptop){
        laptopService.save(laptop);

        return "redirect:/";
    }

    @RequestMapping(value = "/deleteLaptop/{id}", method = RequestMethod.GET)
    public String newLaptop(@PathVariable int id) {

        laptopService.delete(id);

        return "redirect:/shop";
    }

    @RequestMapping(value = "/buyLaptop", method = RequestMethod.GET)
    public String addLaptopToUser(Principal principal, @PathVariable int id) {
        userService.buyLaptop(principal, id);

        return "redirect:/";
    }
}
