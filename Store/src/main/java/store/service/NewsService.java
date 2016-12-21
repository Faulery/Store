package store.service;
import store.entity.News;

import java.util.List;

public interface NewsService {
    void save(News news);
    List<News> findAll();
    News findOne(int id);
    void delete(int id);
}
