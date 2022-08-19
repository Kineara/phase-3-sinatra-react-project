class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/users" do 
    User.all.to_json 
  end

  get "/users/:id" do 
    user = User.find(params[:id])
    user.to_json
  end

  get "/vehicles" do 
    Vehicle.all.to_json
  end

  get "/tasks" do
    Task.all.to_json
  end
end
