
      UPDATE orders
      SET status = :param0
      WHERE id = :param1::bigint
        AND customer_identifier = :param2;
    