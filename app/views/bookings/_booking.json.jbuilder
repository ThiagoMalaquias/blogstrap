json.extract! booking, :id, :vehicle_id, :client_id, :waiting_time, :total_value, :start_date, :end_date, :target_payment, :created_at, :updated_at
json.url booking_url(booking, format: :json)
