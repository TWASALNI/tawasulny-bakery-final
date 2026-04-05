
      SELECT
        r.*,
        ROUND(AVG(r2.rating), 1) AS avg_rating,
        COUNT(r2.id) AS total_ratings
      FROM ratings r
      JOIN ratings r2 ON r2.driver_id = r.driver_id
      WHERE r.driver_id = {{params.driver_id}}::bigint
      GROUP BY r.id
      ORDER BY r.created_at DESC;
    