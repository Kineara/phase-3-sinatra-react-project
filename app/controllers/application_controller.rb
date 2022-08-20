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
    task.to_json
  end
end
