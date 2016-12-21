package store.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import store.entity.Laptop;


public interface LaptopDao extends JpaRepository<Laptop, Integer> {

}
