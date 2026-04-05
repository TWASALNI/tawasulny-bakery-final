
      INSERT INTO orders (
        customer_name, customer_phone, city, neighborhood,
        home_location, work_location, persons_count, passenger_type,
        trip_type, departure_time, return_time, work_days, notes,
        status, payment_status, customer_identifier
      ) VALUES (
        :param0, :param1,
        :param2, :param3,
        :param4, :param5,
        :param6::int, :param7,
        :param8,
        :param9, :param10,
        :param11, :param12,
        'pending_pricing', 'unpaid',
        :param13
      )
      RETURNING id;
    