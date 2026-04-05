
      INSERT INTO order_applications (order_id, driver_id)
      VALUES (:param0::bigint, :param1::bigint)
      ON CONFLICT (order_id, driver_id) DO NOTHING;
    