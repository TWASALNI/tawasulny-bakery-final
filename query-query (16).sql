
      INSERT INTO supervisors (full_name, phone, pin, permissions, role)
      VALUES ({{params.full_name}}, {{params.phone}}, md5({{params.pin}}), {{params.permissions}}, {{params.role}})
      RETURNING id;
    