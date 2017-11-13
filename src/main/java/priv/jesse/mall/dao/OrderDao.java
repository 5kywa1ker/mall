package priv.jesse.mall.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import priv.jesse.mall.entity.Order;

public interface OrderDao extends JpaRepository<Order, Integer> {
}
