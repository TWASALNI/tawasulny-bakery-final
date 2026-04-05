
      INSERT INTO supervisors (full_name, phone, pin, permissions, role)
      VALUES (:param0, :param1, md5(:param2), :param3, :param4)
      RETURNING id;
    