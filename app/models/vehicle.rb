class Vehicle < ActiveRecord::Base 
  belongs_to :user 
  has_many :tasks

  def self.get_motorcycles
    motos = Vehicle.where(vehicle_type: "Motorcycle")
    motos.to_json
  end

  def self.get_cars
    cars = Vehicle.where(vehicle_type: "Car")
    cars.to_json 
  end
end