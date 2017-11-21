package priv.jesse.mall.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import priv.jesse.mall.entity.Order;

public interface OrderDao extends JpaRepository<Order, Integer> {

    /**
     * 更改订单状态
     * @param state
     * @param id
     */
    @Modifying
    @Query(value = "update order o set o.state=?1 where o.id=?2",nativeQuery = true)
    void updateState(int state,int id);
}
