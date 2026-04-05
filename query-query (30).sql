
      SELECT * FROM orders
      WHERE driver_id = {{params.driver_id}}::bigint
      ORDER BY created_at DESC;
    