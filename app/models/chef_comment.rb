class ChefComment < ActiveRecord::Base
    belongs_to :chef
    belongs_to :user
end