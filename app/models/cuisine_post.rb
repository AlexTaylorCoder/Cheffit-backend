class CuisinePost < ActiveRecord::Base
    belongs_to :cuisine 
    belongs_to :chef_post
end