json.extract! vehicle, :id, :brand_id, :name, :color, :qty_passengers, :plate, :value, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
