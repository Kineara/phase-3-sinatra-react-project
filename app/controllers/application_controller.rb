class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/users" do 
    User.all.to_json 
  end

  get "/users/:id" do 
    user = User.find(params[:id])
    user.to_json(include: :vehicles)
  end

  get "/vehicles" do 
    Vehicle.all.to_json
  end

  get "/vehicles/:id" do 
    vehicle = Vehicle.find(params[:id])
    vehicle.to_json(include: :tasks)
  end

  get "/tasks" do
    Task.all.to_json
  end
end
