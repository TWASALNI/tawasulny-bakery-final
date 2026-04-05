
      UPDATE orders
      SET driver_id = {{params.driver_id}}::bigint,
          status = 'active_monthly',
          final_price = proposed_price,
          admin_commission = proposed_price * 0.10,
          payment_status = 'paid'
      WHERE id = {{params.order_id}}::bigint;
    