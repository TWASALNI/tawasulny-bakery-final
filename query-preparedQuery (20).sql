
      UPDATE orders
      SET status = 'completed'
      WHERE id = :param0::bigint
        AND status = 'active_monthly';
    