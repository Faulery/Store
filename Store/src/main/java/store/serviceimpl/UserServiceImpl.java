
package store.serviceimpl;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.Validator;
import org.springframework.web.multipart.MultipartFile;
import store.dao.LaptopDao;
import store.dao.UserDao;
import store.entity.Laptop;
import store.entity.Role;
import store.entity.User;
import store.service.UserService;


import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.util.List;

@Service("userDetailsService")
public class UserServiceImpl implements UserService, UserDetailsService {

    @Autowired
    private UserDao dao;
    @Autowired
    private LaptopDao laptopDao;

    @Autowired
    private BCryptPasswordEncoder encoder;

    @Autowired
    @Qualifier("userValidator")
    private store.validator.Validator validator;

    public void save(User user) throws Exception {
        user.setRole(Role.ROLE_USER);
        user.setPassword(encoder.encode(user.getPassword()));
        dao.save(user);
    }

    public List<User> findAll() {
        return dao.findAll();
    }

    public User findOne(int id) {
        return dao.findOne(id);
    }

    public void delete(int id) {
        dao.delete(id);
    }

    public void buyLaptop(Principal principal, int id) {
        User user = dao.findOne(Integer.parseInt(principal.getName()));
        Laptop laptop = laptopDao.findOne(id);

        user.getLaptops().add(laptop);
    }

    @Transactional
    public void saveImage(Principal principal, MultipartFile multipartFile) {
        User user = dao.findOne(Integer.parseInt(principal.getName()));

        String path = System.getProperty("catalina.home") + "/resources/"
                + user.getName() + "/" + multipartFile.getOriginalFilename();

        user.setPathImage("resources/" + user.getName() + "/" + multipartFile.getOriginalFilename());

        File file = new File(path);

        try {
            file.mkdirs();
            try {
                FileUtils.cleanDirectory
                        (new File(System.getProperty("catalina.home") + "/resources/" + user.getName() + "/"));
            } catch (IOException e) {
                e.printStackTrace();
            }
            multipartFile.transferTo(file);
        } catch (IOException e) {
            System.out.println("Error with file");
        }
        dao.save(user);
    }

    public UserDetails loadUserByUsername(String name) throws UsernameNotFoundException {
        return dao.findByName(name);
    }
}

