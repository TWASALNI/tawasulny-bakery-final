
      INSERT INTO notifications (target_role, target_driver_id, title, message, order_id)
      VALUES (
        {{params.target_role}},
        {{params.target_driver_id}}::bigint,
        {{params.title}},
        {{params.message}},
        {{params.order_id}}::bigint
      );
    