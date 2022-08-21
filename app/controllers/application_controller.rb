class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/users' do
    User.all.to_json
  end

  get '/users/:id' do
    user = User.find(params[:id])
    user.to_json(include: :vehicles)
  end

  delete '/users/:id' do
    user = User.find(params[:id])
    user.destroy
    user.to_json
  end

  get '/vehicles' do
    Vehicle.all.to_json
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

  delete '/vehicles/:id' do
    vehicle = Vehicle.find(params[:id])
    vehicle.destroy
    vehicle.to_json
  end

  get '/tasks' do
    Task.all.to_json
  end

  patch '/tasks/:id' do
    task = Task.find(params[:id])
    task.update(
      completed: params[:completed]
    )
    vehicle = Vehicle.find(task.vehicle_id)
    vehicle.get_tasks.to_json
  end
end
