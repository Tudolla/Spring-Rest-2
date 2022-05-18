package tacos.data;


import org.springframework.data.repository.CrudRepository;

import tacos.Order;
import tacos.Taco;

public interface OrderRepository extends CrudRepository<Order, Long> {
}