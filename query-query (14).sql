
      INSERT INTO orders (
        customer_name, customer_phone, city, neighborhood,
        home_location, work_location, persons_count, passenger_type,
        trip_type, departure_time, return_time, work_days, notes,
        status, payment_status, customer_identifier
      ) VALUES (
        {{params.customer_name}}, {{params.customer_phone}},
        {{params.city}}, {{params.neighborhood}},
        {{params.home_location}}, {{params.work_location}},
        {{params.persons_count}}::int, {{params.passenger_type}},
        {{params.trip_type}},
        {{params.departure_time}}, {{params.return_time}},
        {{params.work_days}}, {{params.notes}},
        'pending_pricing', 'unpaid',
        {{params.customer_identifier}}
      )
      RETURNING id;
    