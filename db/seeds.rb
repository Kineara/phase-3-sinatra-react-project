puts "🌱 Seeding vrooms..."

User.create(name: "Riley")
User.create(name: "Ecco")
Vehicle.create(vehicle_type: "Motorcycle", make: "Suzuki", model: "SV650", year: 2001, nickname: "Squirtle", user_id: 1, owned_since: 2020)
Vehicle.create(vehicle_type: "Motorcycle", make" "Suzuki", model: "GSXR 600", year: 2005, nickname: "GSXRAWR", user_id: 1, owned_since: 2022)
Vehicle.create(vehicle_type: "Car", make: "Toyota", model: "4Runner", year: 2000, nickname: "Kaylee", user_id: 1, owned_since: 2016)
Task.create(name: "Oil Change", description: "Change the oil!", date_due: 2022, category: "Oil Changes", vehicle_id: 1)
Task.create(name: "Rotate tires", description: "Rotate the tires!", date_due: 2023, category: "Wheels", vehicle_id: 2)

puts "✅ Vrooms ready!"
