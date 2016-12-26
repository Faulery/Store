
package store.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import store.dao.NewsDao;
import store.entity.News;
import store.service.NewsService;


import java.util.List;

@Service
public class NewsServiceImpl implements NewsService {

    @Autowired
    private NewsDao dao;

    public void save(News news) {
        dao.save(news);
    }

    public List<News> findAll() {
        return dao.findAll();
    }

    public News findOne(int id) {
        return dao.findOne(id);
    }

    public void delete(int id) {
        dao.delete(id);
    }
}

