
      SELECT id FROM ratings
      WHERE order_id = {{params.order_id}}::bigint
      LIMIT 1;
    