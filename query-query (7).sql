
      UPDATE orders
      SET status = 'cancelled'
      WHERE id = {{params.id}}::bigint;
    