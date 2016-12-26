package store.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import store.dto.DTOUtilMapper;
import store.entity.User;
import store.service.UserService;
import java.security.Principal;

@Controller
public class UserConroller {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/signUp", method = RequestMethod.GET)
    public String newUser(Model model) {
        model.addAttribute("usersDTOs", DTOUtilMapper.usersToUsersDTO(userService.findAll()));
        model.addAttribute("user", new User());
        return "signUp";
    }

    @RequestMapping(value = "/saveUser", method = RequestMethod.POST)
    public String saveUser(@ModelAttribute User user, Model model) {
        try {
            userService.save(user);
        } catch (Exception e) {
            model.addAttribute("exception", e.getMessage());
            return "signUp";
        }
        return "redirect:/signUp";
    }

    @RequestMapping(value = "/deleteUser/{id}", method = RequestMethod.GET)
    public String newUser(@PathVariable int id) {

        userService.delete(id);

        return "redirect:/signUp";
    }

    @RequestMapping(value = "/saveImage", method = RequestMethod.POST)
    public String saveImage(Principal principal, @RequestParam MultipartFile image){
        userService.saveImage(principal, image);

        return "redirect:/";
    }
}

