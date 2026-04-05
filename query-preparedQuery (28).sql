
      SELECT o.*
      FROM orders o
      WHERE o.driver_id = :param0::bigint
        AND o.status IN ('active_monthly', 'in_progress', 'completed')
      ORDER BY o.created_at DESC;
    