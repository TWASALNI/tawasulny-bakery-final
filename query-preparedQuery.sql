
      SELECT id, full_name, phone, city, nationality, vehicle_type, car_model, age, created_at
      FROM drivers
      WHERE driver_status = 'pending_approval'
      ORDER BY created_at DESC;
    