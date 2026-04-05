
      SELECT
        d.*,
        COUNT(o.id) AS orders_count
      FROM drivers d
      LEFT JOIN orders o ON o.driver_id = d.id AND o.status NOT IN ('completed', 'rejected')
      GROUP BY d.id
      ORDER BY d.full_name;
    