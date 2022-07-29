class Cuisine < ActiveRecord::Base
    belongs_to :chef
    has_many :cuisine_posts
    has_many :chef_posts, through: :cuisine_posts
end