
package store.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import store.dao.LaptopDao;
import store.entity.Laptop;
import store.service.LaptopService;


import java.util.List;

@Service
public class LaptopServiceImpl implements LaptopService {

    @Autowired
    private LaptopDao dao;

    public void save(Laptop laptop) {
        dao.save(laptop);
    }

    public List<Laptop> findAll() {
        return dao.findAll();
    }

    public Laptop findOne(int id) {
        return dao.findOne(id);
    }

    public void delete(int id) {
        dao.delete(id);
    }
}

