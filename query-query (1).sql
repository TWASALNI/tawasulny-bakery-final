
      UPDATE drivers
      SET terms_accepted = TRUE
      WHERE id = {{params.driver_id}}::bigint;
    