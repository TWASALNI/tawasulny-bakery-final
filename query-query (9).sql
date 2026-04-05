
      SELECT id, driver_status FROM drivers
      WHERE phone = {{params.phone}}
      LIMIT 1;
    