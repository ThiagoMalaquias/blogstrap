require 'faker'

4.times do
  brand = Brand.create(name: Faker::Vehicle.manufacture)

  5.times do
    Vehicle.create(
      brand: brand,
      name: Faker::Vehicle.model,
      color: Faker::Color.hex_color,
      qty_passengers: Faker::Number.number(digits: 1),
      plate: Faker::Vehicle.license_plate,
      value: Faker::Number.decimal(l_digits: 3, r_digits: 2)
    )
  end
end

Manager.create(name: "Thiago Sopha", email: "tammalaquias+sopha@gmail.com", password: "123456")
Booking.create(vehicle: Vehicle.first, client: Client.first, waiting_time: 12, total_value: 130, start_date: Time.now, end_date: Time.now + 3.days, target_payment: true)