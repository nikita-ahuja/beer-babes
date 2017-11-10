# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

beers = Beer.create([
  { name: "Live Oak Hefeweizen", style: "Hefeweizen", brewery: "Live Oak Brewing Co", independent: true, city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2015/08/Live-Oak-Hefeweizen-Ale.jpeg" },
  { name: "(512)Pecan Porter", style: "Porter", brewery: "(512)Brewing Co", independent: true, city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2016/04/512-Brewing-Pecan-Porter.png"},
  { name: "Fire Eagle", style: "IPA", brewery: "Austin Beerworks", independent: true, city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2016/07/fire-eagle-Austin-Beerworks-266x500.jpg"},
  { name: "Black Medal Farmhouse Imperial Stout", style: "Imperial Stout", brewery: "Jester King Brewery", independent: true, city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2016/07/Jester-King-Black-Medal-300x265.jpg" },
  { name: "The One They Call Zoe", style: "Pale Lager", brewery: "Hops and Grain Brewing", independent: true, city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2016/07/Hops-and-Grain-Zoe.jpg" },
  { name: "Convict Hill", style: "Imperial Stout", brewery: "Independence Brewing", independent: true, city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2016/07/Independence-Brewing-Convict-Hill-Oatmeal-Stout-439x1024.jpg" },
  { name: "Buckethead IPA", style: "IPA", brewery: "Thirsty Planet Brewing", independent: true, city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2016/07/Thirsty-Planet-Buckethead-IPA.jpg" },
  { name: "Meta Modern Session", style: "Session IPA", brewery: "Oasis Texas Brewing", independent: true, city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2016/07/Oasis-Texas-Brewing-Meta-Modern-Session-IPA-1-233x300.jpg" },
  { name: "Tripel B", style: "Belgian Tripel", brewery: " Adelberts Brewery", independent: true, city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2016/07/Adelberts-Tripel-B-Belgian.jpg" },
  { name: "Sweep The Leg Peanut Butter Stout", style: "Stout", brewery: "Infamous Brewing", independent: true, city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2016/02/infamous-sweep-the-leg.jpg" },
  { name: "Hijack", style: "Cream Ale", brewery: "Infamous Brewing", independent: true, city: "Austin", image: "http://www.tastings.com/Product-Images/Beer/2016/5_2_2016/214807_s.jpg" },
  { name: "Widmer Hefeweizen", style: "Hefeweizen", brewery: "Widmer Brothers Brewing", independent: true, city: "Portland", image: "https://cdn.pastemagazine.com/www/articles/widmer-hefe.jpg" },
  { name: "Deschutes Mirror Pond", style: "Pale Ale", brewery: "Deschutes", independent: true, city: "Bend", image: "https://cdn.pastemagazine.com/www/articles/assets_c/2017/04/deschutes%20mirror%20pond%20retouch-thumb-220x334-608350.jpg" },
  { name: "Nectarine Premiere", style: "Saison", brewery: "Garde Brewing", independent: true, city: "Tillamook", image: "https://cdn.beeradvocate.com/im/c_beer_image.gif" },
  ])

users = 10.times.map do
 User.create!( :username => Faker::Name.first_name,
               :email      => Faker::Internet.email,
               :password   => 'password' )
end

reviews = 100.times.map do
  Review.create(comments: Faker::Hipster.paragraph,
                notes: Faker::Hipster.sentence,
                date: Date.now,
                location: "Austin"
                beer_id: rand(1..16),
                user_id: rand(1..10),
                rating: [1, 2, 3, 4, 5].sample)
end