package priv.jesse.mall.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import priv.jesse.mall.entity.Product;

public interface ProductDao extends JpaRepository<Product, Integer> {
}
