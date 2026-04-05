
      UPDATE orders
      SET status = {{params.status}}
      WHERE id = {{params.id}}::bigint
        AND customer_identifier = {{params.customer_identifier}};
    