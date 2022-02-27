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