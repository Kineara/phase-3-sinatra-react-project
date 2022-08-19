puts "🌱 Seeding vrooms..."

User.create(name: "Riley", state: "Colorado", city: "Denver")
Motorcycle.create(make: "Suzuki", model: "SV650", year: 2001, nickname: "Squirtle", user_id: 1, owned_since: 2020)
Car.create(make: "Toyota", model: "4Runner", year: 2000, nickname: "Kaylee", user_id: 1, owned_since: 2018)
Task.create(name: "Oil Change", description: "Change the oil!", date_due: 2022, last_done: 2021, price: 0, vehicle_id: 1)
puts "✅ Vrooms ready!"
