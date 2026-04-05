
      UPDATE orders
      SET driver_id = {{params.driver_id}}::bigint,
          status = 'assigned'
      WHERE id = {{params.id}}::bigint;
    