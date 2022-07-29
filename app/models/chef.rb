class Chef < ActiveRecord::Base
    has_many :cuisines
    has_many :chef_posts
    has_many :user_comments
    has_many :chef_comments
    has_many :requests
    has_many :users, through: :requests
end