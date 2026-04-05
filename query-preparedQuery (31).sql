
      SELECT
        d.id, d.full_name, d.phone, d.city, d.nationality,
        d.vehicle_type, d.car_model, d.age,
        d.is_available, d.driver_status, d.is_banned,
        d.terms_accepted, d.created_at,
        COALESCE(AVG(r.rating), 0) AS avg_rating,
        COUNT(DISTINCT r.id) AS total_ratings,
        COUNT(DISTINCT o.id) AS total_orders,
        COUNT(DISTINCT CASE WHEN o.status = 'completed' THEN o.id END) AS completed_orders,
        COALESCE(SUM(CASE WHEN o.status = 'completed' THEN o.final_price ELSE 0 END), 0) AS total_earned
      FROM drivers d
      LEFT JOIN ratings r ON r.driver_id = d.id
      LEFT JOIN orders o ON o.driver_id = d.id
      WHERE d.id = :param0::bigint
      GROUP BY d.id;
    