package priv.jesse.mall.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import priv.jesse.mall.entity.User;

public interface UserDao extends JpaRepository<User, Integer> {
}
