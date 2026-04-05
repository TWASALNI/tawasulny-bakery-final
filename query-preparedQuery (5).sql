
      UPDATE orders
      SET driver_id = :param0::bigint,
          status = 'assigned'
      WHERE id = :param1::bigint;
    