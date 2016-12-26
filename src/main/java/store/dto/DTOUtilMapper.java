package store.dto;

import store.entity.Laptop;
import store.entity.User;

import java.util.ArrayList;
import java.util.List;

public class DTOUtilMapper {
    public static List<UserDTO> usersToUsersDTO(List<User> users){

        List<UserDTO> userDTOs = new ArrayList<UserDTO>();

        for (User user : users) {
            UserDTO userDTO = new UserDTO();

            userDTO.setName(user.getName());
            userDTO.setSerName(user.getSerName());
            userDTO.setId(user.getId());

            userDTOs.add(userDTO);
        }

        return userDTOs;
    }

    public static List<LaptopDTO> laptopsToLaptopsDTO(List<Laptop> laptops) {

        List<LaptopDTO> laptopDTOs = new ArrayList<LaptopDTO>();

        for (Laptop laptop : laptops) {
            LaptopDTO laptopDTO = new LaptopDTO();

            laptopDTO.setBrand(laptop.getBrand());
            laptopDTO.setPrise(laptop.getPrise());
            laptopDTO.setId(laptop.getId());

            laptopDTOs.add(laptopDTO);
        }

        return laptopDTOs;
    }
}
