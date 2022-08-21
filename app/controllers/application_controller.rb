class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/users' do
    User.all.to_json
  end

  get '/users/:id' do
    user = User.find(params[:id])
    user.to_json(include: :vehicles)
  end

  post '/users' do 
    user = User.create(
      name: params[:name]
    )
    user.to_json 
  end

  delete '/users/:id' do 
    user = User.find(params[:id])
    user.destroy 
    user.to_json
  end

  get '/vehicles/:id' do
    vehicle = Vehicle.find(params[:id])
    vehicle.to_json(include: :tasks)
  end

  get '/vehicles/:id/tasks' do
    vehicle = Vehicle.find(params[:id])
    tasks = vehicle.get_tasks
    tasks.to_json
  end

  post '/vehicles' do 
    vehicle = Vehicle.create(
      nickname: params[:nickname],
        year: params[:year],
        make: params[:make],
        model: params[:model],
        vehicle_type: params[:vehicle_type],
        user_id: params[:user_id],
        owned_since: params[:owned_since],
    )
    vehicle.to_json
  end

  post '/tasks' do 
    task = Task.create(
      name: params[:name],
      description: params[:description],
      category: params[:category],
      date_due: params[:date_due],
      vehicle_id: params[:vehicle_id],
      completed: false
    )
    task.to_json
  end

  patch '/tasks/:id' do
    task = Task.find(params[:id])
    task.update(
      completed: params[:completed]
    )
    vehicle = Vehicle.find(task.vehicle_id)
    vehicle.get_tasks.to_json
  end

  delete '/tasks/:id' do
    task = Task.find(params[:id])
    task.destroy 
    vehicle = Vehicle.find(task.vehicle_id)
    vehicle.get_tasks.to_json
  end
end
