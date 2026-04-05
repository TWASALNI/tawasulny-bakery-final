
      SELECT o.*, d.full_name AS driver_name, d.phone AS driver_phone, d.vehicle_type AS driver_vehicle_type
      FROM orders o
      LEFT JOIN drivers d ON o.driver_id = d.id
      WHERE o.customer_identifier = {{params.customer_identifier}}
      ORDER BY o.created_at DESC;
    