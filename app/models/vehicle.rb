class Vehicle < ActiveRecord::Base 
  belongs_to :user 
  has_many :tasks

  def get_tasks
    tasks = Task.where(vehicle_id: self.id)
    tasks
  end
end