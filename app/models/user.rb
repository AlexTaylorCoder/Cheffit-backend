class User < ActiveRecord::Base
    has_many :requests 
    has_many :user_comments
    has_many :chef_comments
    has_many :chefs, through: :requests

include BCrypt

def password
    @password ||= Password.new(password)
end

def as_json()(options={})
    super(options.merge({except: [:password]}))
end

end