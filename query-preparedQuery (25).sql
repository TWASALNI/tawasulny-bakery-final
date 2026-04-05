
      SELECT
        id, city, neighborhood, home_location, work_location,
        persons_count, passenger_type, trip_type,
        departure_time, return_time, work_days,
        notes, proposed_price, status, created_at
      FROM orders
      WHERE status = 'available_to_drivers'
      ORDER BY created_at DESC;
    