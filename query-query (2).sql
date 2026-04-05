
      INSERT INTO order_applications (order_id, driver_id)
      VALUES ({{params.order_id}}::bigint, {{params.driver_id}}::bigint)
      ON CONFLICT (order_id, driver_id) DO NOTHING;
    