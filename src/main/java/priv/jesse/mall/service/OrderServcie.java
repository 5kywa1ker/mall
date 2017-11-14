package priv.jesse.mall.service;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import priv.jesse.mall.entity.Order;

import java.util.List;

public interface OrderServcie {
    /**
     * 根据id查询
     *
     * @param id
     * @return
     */
    Order findById(int id);

    /**
     * 分页查询所有
     *
     * @param pageable
     * @return
     */
    Page<Order> findAll(Pageable pageable);

    /**
     * 按条件查询
     *
     * @param example
     * @return
     */
    List<Order> findAllExample(Example<Order> example);

    /**
     * 更新
     *
     * @param order
     * @return
     */
    void update(Order order);

    /**
     * 创建
     *
     * @param order
     * @return
     */
    int create(Order order);

    /**
     * 根据Id删除
     *
     * @param id
     * @return
     */
    void delById(int id);

}
