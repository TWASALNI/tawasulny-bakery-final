
      INSERT INTO notifications (target_role, target_driver_id, title, message, order_id)
      VALUES (
        :param0,
        :param1::bigint,
        :param2,
        :param3,
        :param4::bigint
      );
    