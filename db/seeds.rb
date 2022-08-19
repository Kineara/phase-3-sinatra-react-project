puts "🌱 Seeding vrooms..."

User.create(name: "Riley", state: "Colorado", city: "Denver")
Vehicle.create(vehicle_type: "Motorcycle", make: "Suzuki", model: "SV650", year: 2001, nickname: "Squirtle", user_id: 1, owned_since: 2020)
Vehicle.create(vehicle_type: "Car", make: "Toyota", model: "4Runner", year: 2000, nickname: "Kaylee", user_id: 1, owned_since: 2018)
Task.create(name: "Oil Change", description: "Change the oil!", date_due: 2022, last_done: 2021, price: 0, vehicle_id: 1)
Task.create(name: "Rotate tires", description: "Rotate the tires!", date_due: 2023, last_done: 2022, price: 0, vehicle_id: 2)

puts "✅ Vrooms ready!"
