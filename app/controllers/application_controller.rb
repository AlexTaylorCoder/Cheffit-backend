class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  post "/chef/createaccount" do
    
  end
  post "/user/createaccount" do

  end
  post "/login" do
    User.find_by()
  end
  get "/chef/profile" do
    
  end
  get "/user/home/:id" do
    lat_range_upper = User.find(params[:id]).{latitude_upper:latitude+.05,longitude_upper:longitude+.05,
        latitude_lower:latitude-.05,longitude_lower:longitude-.05}

    Chef.where("longitude > ? and latitude",)
  end
  get "/user/profile" do
    
  end
  patch "/chef/editprofile" do

  end
  patch "/user/editprofile" do

  end
  delete "/chef/post" do

  end

end
