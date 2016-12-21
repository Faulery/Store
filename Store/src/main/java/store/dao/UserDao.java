package store.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import store.entity.User;


public interface UserDao extends JpaRepository<User, Integer> {

    User findByName(String name);
}
