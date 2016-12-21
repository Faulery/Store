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
}
