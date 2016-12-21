package store.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import store.entity.News;


public interface NewsDao extends JpaRepository<News, Integer> {
}
