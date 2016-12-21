package store.service;

import org.springframework.web.multipart.MultipartFile;
import store.entity.User;

import java.security.Principal;
import java.util.List;

public interface UserService {
    void save(User user) throws Exception;

    List<User> findAll();

    User findOne(int id);

    void delete(int id);

    void buyLaptop(Principal principal, int id);

    public void saveImage(Principal principal, MultipartFile multipartFile);
}
