package store.service;

import store.entity.Laptop;

import java.util.List;

public interface LaptopService {

    void save(Laptop laptop);
    List<Laptop> findAll();
    Laptop findOne(int id);
    void delete(int id);
}
