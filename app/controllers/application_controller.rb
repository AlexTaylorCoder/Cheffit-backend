require "bcrypt"

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  post "/user/createaccount" do
    username = params[:username]
    password = params[:password]
    first_name = params[:first_name]
    last_name = params[:last_name]
    phone = params[:phone]
    prof_pic = params[:prof_pic]
    email = params[:email]
    longitude = params[:longitude]
    latitude = params[:latitude]

    user = User.create(username:username, password_hash:BCrypt::Password.create(password), first_name:first_name, last_name:last_name, phone:phone, prof_pic:prof_pic, email:email,longitude:longitude, latitude:latitude)
    {
      success:true,
      data: user
    }.to_json
  end

  post "/chef/createaccount" do
    username = params[:username]
    password = params[:password]
    first_name = params[:first_name]
    last_name = params[:last_name]
    phone = params[:phone]
    prof_pic = params[:prof_pic]
    bio = params[:bio]
    email = params[:email]
    longitude = params[:longitude]
    latitude = params[:latitude]
    chef= Chef.create(username:username, password_hash:BCrypt::Password.create(password), first_name:first_name, last_name:last_name, phone:phone, prof_pic:prof_pic, bio:bio, email:email,longitude:longitude, latitude:latitude)
    {
      success:true,
      data: chef
    }.to_json
  end
  get "/customer/login" do
    username = params[:username]
    password = params[:password]
    begin
      user= User.where(username:username).first
      if !user || user.password != password 
        {
          success: false,
          errorMessage: "Invalid username/password"
        }.to_json
      else
        {
          success:true,
          data:user
        }.to_json
      end
    rescue
        {
          success:false,
          errorMessage:"Unknown error occured"
        }.to_json
      end
  end
  get "/chef/login" do
    username = params[:username]
    password = params[:password]
    begin
      chef= Chef.where(username:username).first
      if !chef || chef.password != password 
        {
          success: false,
          errorMessage: "Invalid username/password"
        }.to_json
      else
        {
          success: true,
          data:chef
        }.to_json
      end
    rescue
        {
          success: false,
          errorMessage:"Unknown error occured"
        }.to_json
      end
  end
  get "/chefs" do
    Chef.all.to_json
  end
  get "/user/home/:id" do
    # lat_range_upper = Chef.find(params[:id]).{latitude_upper:latitude+.05,longitude_upper:longitude+.05,
    #     latitude_lower:latitude-.05,longitude_lower:longitude-.05}

    User.find(params[:id]).to_json
    # Chef.where("longitude > ? and latitude",)
  end
  patch "/chef/editprofile" do

  end
  patch "/user/editprofile" do

  end
  delete "/chef/post" do

  end

  get "/chef/requests" do
    Chef.second.requests.to_json
  end

  get "/chef/info" do
    Chef.third.to_json
  end
  get "/chef/:id" do
    Chef.find(params[:id]).to_json
  end

end
