
      UPDATE orders
      SET status = 'cancelled'
      WHERE id = :param0::bigint;
    