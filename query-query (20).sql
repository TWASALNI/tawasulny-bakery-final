
      UPDATE orders
      SET status = 'completed'
      WHERE id = {{params.id}}::bigint
        AND status = 'active_monthly';
    