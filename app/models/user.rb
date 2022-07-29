class User < ActiveRecord::Base
    has_many :requests 
    has_many :user_comments
    has_many :chef_comments
    has_many :chefs, through: :requests
end