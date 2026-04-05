
      SELECT
        customer_name,
        customer_phone,
        customer_identifier,
        city,
        COUNT(*) AS orders_count,
        MAX(created_at) AS last_order_at,
        bool_and(is_archived) AS is_archived
      FROM orders
      GROUP BY customer_name, customer_phone, customer_identifier, city
      ORDER BY last_order_at DESC;
    