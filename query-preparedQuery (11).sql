
      SELECT id FROM ratings
      WHERE order_id = :param0::bigint
      LIMIT 1;
    