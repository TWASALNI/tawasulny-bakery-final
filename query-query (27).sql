
      SELECT
        customer_name, customer_phone, customer_identifier, city,
        COUNT(*) AS total_orders,
        COUNT(CASE WHEN status = 'completed' THEN 1 END) AS completed_orders,
        COUNT(CASE WHEN status = 'cancelled' THEN 1 END) AS cancelled_orders,
        SUM(CASE WHEN status = 'completed' THEN final_price ELSE 0 END) AS total_spent,
        MAX(created_at) AS last_order_at,
        MIN(created_at) AS first_order_at
      FROM orders
      WHERE customer_phone = {{params.phone}}
      GROUP BY customer_name, customer_phone, customer_identifier, city
      LIMIT 1;
    