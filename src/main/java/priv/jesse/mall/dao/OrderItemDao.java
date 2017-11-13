package priv.jesse.mall.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import priv.jesse.mall.entity.OrderItem;

public interface OrderItemDao extends JpaRepository<OrderItem, Integer> {
}
