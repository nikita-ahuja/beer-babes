  # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
beers = Beer.create([
  { name: "Live Oak Hefeweizen", beer_style: "Hefeweizen", characteristic: "Light" ,brewery: "Live Oak Brewing Co", independent: "independent", city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2015/08/Live-Oak-Hefeweizen-Ale.jpeg" },
  { name: "(512)Pecan Porter", beer_style: "Porter", characteristic: "Dark" ,brewery: "(512)Brewing Co", independent: "independent", city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2016/04/512-Brewing-Pecan-Porter.png"},
  { name: "Fire Eagle", beer_style: "IPA", characteristic: "Hoppy",brewery: "Austin Beerworks", independent: "independent", city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2016/07/fire-eagle-Austin-Beerworks-266x500.jpg"},
  { name: "Black Medal Farmhouse Imperial Stout", beer_style: "Imperial Stout", characteristic: "Dark", brewery: "Jester King Brewery", independent: "independent", city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2016/07/Jester-King-Black-Medal-300x265.jpg" },
  { name: "The One They Call Zoe", beer_style: "American Pale Lager", characteristic: "Light", brewery: "Hops and Grain Brewing", independent: "independent", city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2016/07/Hops-and-Grain-Zoe.jpg" },
  { name: "Convict Hill", beer_style: "Imperial Stout", characteristic: "Dark" , brewery: "Independence Brewing", independent: "independent", city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2016/07/Independence-Brewing-Convict-Hill-Oatmeal-Stout-439x1024.jpg" },
  { name: "Buckethead IPA", beer_style: "IPA", characteristic: "Hoppy" ,brewery: "Thirsty Planet Brewing", independent: "independent", city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2016/07/Thirsty-Planet-Buckethead-IPA.jpg" },
  { name: "Meta Modern Session", beer_style: "Session IPA", characteristic: "Hoppy", brewery: "Oasis Texas Brewing", independent: "independent", city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2016/07/Oasis-Texas-Brewing-Meta-Modern-Session-IPA-1-233x300.jpg" },
  { name: "Tripel B", beer_style: "Belgian Tripel", characteristic: "Light", brewery: " Adelberts Brewery", independent: "independent", city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2016/07/Adelberts-Tripel-B-Belgian.jpg" },
  { name: "Sweep The Leg Peanut Butter Stout", beer_style: "Stout", characteristic: "Dark", brewery: "Infamous Brewing", independent: "independent", city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2016/02/infamous-sweep-the-leg.jpg" },
  { name: "Hijack", beer_style: "Cream Ale", characteristic: "Light", brewery: "Infamous Brewing", independent: "independent", city: "Austin", image: "http://www.tastings.com/Product-Images/Beer/2016/5_2_2016/214807_s.jpg" },
  { name: "Widmer Hefeweizen", beer_style: "Hefeweizen", characteristic: "Light", brewery: "Widmer Brothers Brewing", independent: "independent", city: "Portland", image: "https://cdn.pastemagazine.com/www/articles/widmer-hefe.jpg" },
  { name: "Deschutes Mirror Pond", beer_style: "Pale Ale", characteristic: "Hoppy", brewery: "Deschutes", independent: "independent", city: "Bend", image: "https://cdn.pastemagazine.com/www/articles/assets_c/2017/04/deschutes%20mirror%20pond%20retouch-thumb-220x334-608350.jpg" },
  { name: "Nectarine Premiere", beer_style: "Saison", characteristic: "Hoppy", brewery: "Garde Brewing", independent: "independent", city: "Tillamook", image: "https://scontent-frt3-1.cdninstagram.com/t51.2885-15/s640x640/e35/22581853_379004699200678_413822409662005248_n.jpg" },
  ])

users = 10.times.map do
 User.create!( :username => Faker::Name.first_name,
               :email      => Faker::Internet.email,
               :password   => "password",
               :light_rating => rand(1..5),
               :dark_rating => rand(1..5),
               :hoppy_rating => rand(1..5))
end

reviews = 100.times.map do
  Review.create(comments: Faker::Hipster.paragraph,
                notes: Faker::Hipster.sentence,
                date: Date.new(2017,11,11),
                location: "Austin",
                beer_id: rand(1..16),
                user_id: rand(1..10),
                rating: [1, 2, 3, 4, 5].sample)
end