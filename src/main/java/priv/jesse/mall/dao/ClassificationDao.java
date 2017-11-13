package priv.jesse.mall.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import priv.jesse.mall.entity.Classification;

public interface ClassificationDao extends JpaRepository<Classification, Integer> {
}
