
      SELECT oa.order_id, oa.applied_at, oa.status AS application_status,
             o.city, o.neighborhood, o.proposed_price, o.status AS order_status
      FROM order_applications oa
      JOIN orders o ON o.id = oa.order_id
      WHERE oa.driver_id = {{params.driver_id}}::bigint
      ORDER BY oa.applied_at DESC;
    