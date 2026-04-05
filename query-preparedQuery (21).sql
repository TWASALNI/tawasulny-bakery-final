
      -- Step 1: Invalidate any previous active codes for this phone
      UPDATE verification_codes
      SET used = TRUE
      WHERE phone = :param0
        AND used = FALSE;

      -- Step 2: Generate and insert a new 4-digit OTP (valid 10 minutes)
      INSERT INTO verification_codes (phone, code, expires_at)
      VALUES (
        :param1,
        LPAD(FLOOR(RANDOM() * 10000)::int::text, 4, '0'),
        NOW() + INTERVAL '10 minutes'
      )
      RETURNING phone, code, expires_at;
    