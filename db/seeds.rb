puts "🌱 Seeding spices..."

Chef.create(username:"ironchef"password_hash:"123",first_name:"Bobby",
    last_name:"Flay",phone:"917-456-3421",email:"bobby@gmail.com",
    bio:"I am the iron chef, built to destroy", longitude: 40.7, latitude: -73.9, prof_pic:'https://www.biography.com/.image/t_share/MTgwNDM1NDcwMDI5Njk0MTAy/gettyimages-828680820.jpg')

Chef.create(username:"cook4life"password_hash:"123",first_name:"Sean",
    last_name:"Booker",phone:"917-456-3421",email:"bobby@gmail.com",
    bio:"Let's make your next event special",longitude: 40.73, latitude: -73.99, prof_pic:'https://img.freepik.com/free-photo/handsome-confident-smiling-man-with-hands-crossed-chest_176420-18743.jpg?w=2000')

Chef.create(username:"fivestars"password_hash:"123",first_name:"Willie",
    last_name:"Chen",phone:"917-456-3421",email:"bobby@gmail.com",
    bio:"Book me for your next event!",longitude: 40.88, latitude: -73.85, prof_pic:'https://media.istockphoto.com/photos/smiling-indian-man-looking-at-camera-picture-id1270067126?k=20&m=1270067126&s=612x612&w=0&h=ZMo10u07vCX6EWJbVp27c7jnnXM2z-VXLd-4maGePqc=')

 Chef.create(username:"cuisineking"password_hash:"123",first_name:"Alex",
    last_name:"Taylor",phone:"917-456-3421",email:"bobby@gmail.com",
    bio:"I make the best food!",longitude: 40.81, latitude: -73.56, prof_pic:'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cG9ydHJhaXQlMjBtYW58ZW58MHx8MHx8&w=1000&q=80')

Chef.create(username:"chefify"password_hash:"123",first_name:"Joe",
    last_name:"Hirotsu",phone:"917-456-3421",email:"jhirotsu@gmail.com",
    bio:"The best cook. Period!",longitude: 40.76, latitude: -74.29, prof_pic:'https://ca.slack-edge.com/T02MD9XTF-U03FVKLQZNW-80ec6c23d028-512')

Cuisine.create(name: Mexican, chef_id:1)    

Cuisine.create(name: Italian, chef_id:2)   

Cuisine.create(name: Japanese, chef_id:3)  

Cuisine.create(name: American, chef_id:4)  

Cuisine.create(name: Chinese, chef_id:5) 

# LAT = 40.685253
# LONG = -73.963962

# CHEF_ITER = 5
# USER_ITER = 10
# REVIEW_ITER = 5
# CUISINE_ITER = 10
# CHEF_POSTS_ITER = 10
# CHEF_COMMENT_ITER = 10
# USER_COMMENT_ITER = 10
# CHEF_ITER.times do
#     chef = Chef.create(username:Faker::Internet.username(specifier:5..10), password_hash:Faker::Internet.password(min_length: 10, max_length: 20, mix_case: true, special_characters: true), first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,phone:Faker::PhoneNumber.cell_phone,
#         email:Faker::Internet.email, bio:Faker::Lorem.paragraph(sentence_count: 3),longitude:LONG+rand(0.000001...0.00009),
#         latitude:LAT+rand(0.00001...0.00009),chef_price:rand(200))
#     end
# USER_ITER.times do
#     user = User.create(username:Faker::Internet.username(specifier:5..10), password_hash:Faker::Internet.password(min_length: 10, max_length: 20, mix_case: true, special_characters: true), first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,phone:Faker::PhoneNumber.cell_phone,
#         email:Faker::Internet.email,longitude:LONG+rand(0.000001...0.00009),
#         latitude:LAT+rand(0.000001...0.00009))
# end
# CHEF_COMMENT_ITER.times do
#     ChefComment.create(rating:rand(5),comment:Faker::Lorem.paragraph(sentence_count: 3),chef:Chef.find(rand(CHEF_ITER)+1),user:User.find(rand(USER_ITER)+1))
# end
# USER_COMMENT_ITER.times do
#     UserComment.create(chef:Chef.find(rand(CHEF_ITER)+1),user:User.find(rand(USER_ITER)+1),rating:rand(5),comment:Faker::Lorem.paragraph(sentence_count: 3))
# end
# CUISINE_ITER.times do
#     Cuisine.create(name:Faker::Food.ethnic_category,chef:Chef.find(rand(CHEF_ITER)+1))
# end
# CHEF_POSTS_ITER.times do
#     ChefPost.create(dish_name:Faker::Food.dish,featured?:[0,1].sample,chef:Chef.find(rand(CHEF_ITER)+1))
# end
# REVIEW_ITER.times do
#     state = ["Pending","Declined","Accepted"].sample
#     Request.create(request_date:Faker::Date.forward(days: 365),status:state,chef:Chef.find(rand(CHEF_ITER)+1),user:User.find(rand(USER_ITER)+1))
# end


puts "✅ Done seeding!"
