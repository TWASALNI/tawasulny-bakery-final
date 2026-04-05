
      UPDATE drivers
      SET terms_accepted = TRUE
      WHERE id = :param0::bigint;
    