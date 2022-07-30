puts "🌱 Seeding spices..."
LAT = 40.685253
LONG = -73.963962

CHEF_ITER = 5
USER_ITER = 10
REVIEW_ITER = 5
CUISINE_ITER = 10
CHEF_POSTS_ITER = 10
CHEF_COMMENT_ITER = 10
USER_COMMENT_ITER = 10
CHEF_ITER.times do
    chef = Chef.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,phone:Faker::PhoneNumber.cell_phone,
        email:Faker::Internet.email,longitude:LONG+rand(0.000001...0.00009),
        latitude:LAT+rand(0.00001...0.00009),chef_price:rand(200))
    end
USER_ITER.times do
    user = User.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,phone:Faker::PhoneNumber.cell_phone,
        email:Faker::Internet.email,longitude:LONG+rand(0.000001...0.00009),
        latitude:LAT+rand(0.000001...0.00009))
end
CHEF_COMMENT_ITER.times do
    ChefComment.create(rating:rand(5),comment:Faker::Lorem.paragraph(sentence_count: 3),chef:Chef.find(rand(CHEF_ITER)+1),user:User.find(rand(USER_ITER)+1))
end
USER_COMMENT_ITER.times do
    UserComment.create(chef:Chef.find(rand(CHEF_ITER)+1),user:User.find(rand(USER_ITER)+1),rating:rand(5),comment:Faker::Lorem.paragraph(sentence_count: 3))
end
CUISINE_ITER.times do
    Cuisine.create(name:Faker::Food.ethnic_category,chef:Chef.find(rand(CHEF_ITER)+1))
end
CHEF_POSTS_ITER.times do
    ChefPost.create(dish_name:Faker::Food.dish,featured?:[0,1].sample,chef:Chef.find(rand(CHEF_ITER)+1))
end
REVIEW_ITER.times do
    state = ["Pending","Declined","Accepted"].sample
    Request.create(request_date:Faker::Date.forward(days: 365),status:state,chef:Chef.find(rand(CHEF_ITER)+1),user:User.find(rand(USER_ITER)+1))
end


puts "✅ Done seeding!"
