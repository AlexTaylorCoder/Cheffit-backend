class ChefPost < ActiveRecord::Base
    has_many :cuisine_posts
    belongs_to :chef
    has_many :cuisines, through: :cuisine_posts
end