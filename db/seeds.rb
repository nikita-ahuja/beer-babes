  # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
beers = Beer.create([
  { name: "Live Oak Hefeweizen", beer_style: "Hefeweizen", characteristic: "Light" ,brewery: "Live Oak Brewing Co", independent: "Independent", city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2015/08/Live-Oak-Hefeweizen-Ale.jpeg" },
  { name: "(512)Pecan Porter", beer_style: "Porter", characteristic: "Dark" ,brewery: "(512)Brewing Co", independent: "Independent", city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2016/04/512-Brewing-Pecan-Porter.png"},
  { name: "Fire Eagle", beer_style: "IPA", characteristic: "Hoppy",brewery: "Austin Beerworks", independent: "Independent", city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2016/07/fire-eagle-Austin-Beerworks-266x500.jpg"},
  { name: "Black Medal Farmhouse Imperial Stout", beer_style: "Imperial Stout", characteristic: "Dark", brewery: "Jester King Brewery", independent: "Independent", city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2016/07/Jester-King-Black-Medal-300x265.jpg" },
  { name: "The One They Call Zoe", beer_style: "American Pale Lager", characteristic: "Light", brewery: "Hops and Grain Brewing", independent: "Independent", city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2016/07/Hops-and-Grain-Zoe.jpg" },
  { name: "Convict Hill", beer_style: "Imperial Stout", characteristic: "Dark" , brewery: "Independence Brewing", independent: "Independent", city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2016/07/Independence-Brewing-Convict-Hill-Oatmeal-Stout-439x1024.jpg" },
  { name: "Buckethead IPA", beer_style: "IPA", characteristic: "Hoppy" ,brewery: "Thirsty Planet Brewing", independent: "Independent", city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2016/07/Thirsty-Planet-Buckethead-IPA.jpg" },
  { name: "Meta Modern Session", beer_style: "Session IPA", characteristic: "Hoppy", brewery: "Oasis Texas Brewing", independent: "Independent", city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2016/07/Oasis-Texas-Brewing-Meta-Modern-Session-IPA-1-233x300.jpg" },
  { name: "Tripel B", beer_style: "Belgian Tripel", characteristic: "Light", brewery: " Adelberts Brewery", independent: "Independent", city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2016/07/Adelberts-Tripel-B-Belgian.jpg" },
  { name: "Sweep The Leg Peanut Butter Stout", beer_style: "Stout", characteristic: "Dark", brewery: "Infamous Brewing", independent: "Independent", city: "Austin", image: "https://craftbeeratx-wpengine.netdna-ssl.com/wp-content/uploads/2016/02/infamous-sweep-the-leg.jpg" },
  { name: "Hijack", beer_style: "Cream Ale", characteristic: "Light", brewery: "Infamous Brewing", independent: "Independent", city: "Austin", image: "http://www.tastings.com/Product-Images/Beer/2016/5_2_2016/214807_s.jpg" },
  { name: "Widmer Hefeweizen", beer_style: "Hefeweizen", characteristic: "Light", brewery: "Widmer Brothers Brewing", independent: "Independent", city: "Portland", image: "https://cdn.pastemagazine.com/www/articles/widmer-hefe.jpg" },
  { name: "Deschutes Mirror Pond", beer_style: "Pale Ale", characteristic: "Hoppy", brewery: "Deschutes", independent: "Independent", city: "Bend", image: "https://cdn.pastemagazine.com/www/articles/assets_c/2017/04/deschutes%20mirror%20pond%20retouch-thumb-220x334-608350.jpg" },
  { name: "Nectarine Premiere", beer_style: "Saison", characteristic: "Hoppy", brewery: "Garde Brewing", independent: "Independent", city: "Tillamook", image: "https://scontent-frt3-1.cdninstagram.com/t51.2885-15/s640x640/e35/22581853_379004699200678_413822409662005248_n.jpg" },
  { name: "(512) Wit", beer_style: "Belgian Ale", characteristic: "Light", brewery: "(512)Brewing Co", independent: "independent", city: "Austin", image: "http://www.512brewing.com/wp-content/uploads/freshizer/9b60dfc54cbf40a447afaf67f9bbb0e5_Beers_Core4_Wit-220.png"},
  { name: "(512) Pale", beer_style: "Pale Mosaic", characteristic: "Light", brewery: "(512)Brewing Co", independent: "independent", city: "Austin", image: "http://www.512brewing.com/wp-content/uploads/freshizer/b8230a8bcd855c870ac69935f7dfbb84_Beers_Core4_Pale-220.png"},
  { name: "(512) IPA", beer_style: "IPA", characteristic: "Hoppy", brewery: "(512)Brewing Co", independent: "independent", city: "Austin", image: "http://www.512brewing.com/wp-content/uploads/freshizer/df8c6a63fbcacbc4ae26a4d96269c620_Beers_Core4_IPA-220.png"},
  { name: "(512) Black IPA (A.K.A. BIPA)", beer_style: "IPA", characteristic: "Dark", brewery: "(512)Brewing Co", independent: "independent", city: "Austin", image: "http://www.512brewing.com/wp-content/uploads/freshizer/f73dd316a6b0182ac4fc7366909870e8_BIPA-220.png"},
  { name: "(512) Cascabel Cream Stout", beer_style: "Cream Stout", characteristic: "Dark", brewery: "(512)Brewing Co", independent: "independent", city: "Austin", image: "http://www.512brewing.com/wp-content/uploads/freshizer/04201f933e44c4ff3d14b375d8a2ce22_CCS-220.png"},
  { name: "(512) ALT", beer_style: "Amber Ale", characteristic: "Light", brewery: "(512)Brewing Co", independent: "independent", city: "Austin", image: "http://www.512brewing.com/wp-content/uploads/freshizer/42bbff8e1b911e1a5ebae5e08482ad3d_ALT1-220.png"},
  { name: "(512) Peach Sour", beer_style: "Sour", characteristic: "Light", brewery: "(512)Brewing Co", independent: "independent", city: "Austin", image: "http://www.512brewing.com/wp-content/uploads/freshizer/c1a3a9ece450e7bce56d3549515dd51d_PeachSour.Artwork.v6-220.jpg"},
  { name: "(512) Pecan Porter Nitro", beer_style: "Porter", characteristic: "Dark" ,brewery: "(512)Brewing Co", independent: "independent", city: "Austin", image: "http://www.512brewing.com/wp-content/uploads/freshizer/6bee5edbeeb3c64c0b084e8838b6f734_NITRO_Porter-220.png"},      
  { name: "(512) Oatmeal Coffee Stout (A.K.A Eight)", beer_style: "Stout", characteristic: "Dark", brewery: "(512)Brewing Co", independent: "independent", city: "Austin", image: "http://www.512brewing.com/wp-content/uploads/freshizer/cbeb3a7c3e639e551b6e1925b18487c9_OCS-220.png"},
  { name: "(512) Nut Brown (A.K.A. Seven", beer_style: "Brown Nut Ale", characteristic: "Dark", brewery: "(512)Brewing Co", independent: "independent", city: "Austin", image: "http://www.512brewing.com/wp-content/uploads/freshizer/a2405138f6c4bd6c8212f1735cdb48ad_NutBrown-220.png"},
  { name: "(512) Mosaic", beer_style: "Mosaic", characteristic: "Light", brewery: "(512)Brewing Co", independent: "independent", city: "Austin", image: "http://www.512brewing.com/wp-content/uploads/freshizer/efce945e2014bf1a270def7f6ab9287f_SMaSH.Moasic-220.png"},
  { name: "(512) Wild Bear", beer_style: "Sour Ale", characteristic: "Dark", brewery: "(512)Brewing Co", independent: "independent", city: "Austin", image: "http://www.512brewing.com/wp-content/uploads/freshizer/49432d182db930824f32545340fa30d2_512-wild-bear-220.png"},
  { name: "(512) Dubbel (A.K.A. Six)", beer_style: "Amber Belgian", characteristic: "Light", brewery: "(512)Brewing Co", independent: "independent", city: "Austin", image: "http://www.512brewing.com/wp-content/uploads/freshizer/3fc929bbed40d1eec614657021a4fcc1_Dubbbel-220.png"},
  { name: "Lupulin Rodeo", beer_style: "IPA", characteristic: "Hoppy", brewery: "Hops and Grain Brewing", independent: "independent", city: "Austin", image: "http://www.hopsandgrain.com/wp-content/uploads/2017/11/lupulin-rodeo-can.png"},
  { name: "Pellets & Power", beer_style: "IPA", characteristic: "Hoppy", brewery: "Hops and Grain Brewing", independent: "independent", city: "Austin", image: "http://www.hopsandgrain.com/wp-content/uploads/2017/11/Pellets-and-Powder-can.png"},
  { name: "River Beer", beer_style: "Lager", characteristic: "Light", brewery: "Hops and Grain Brewing", independent: "independent", city: "Austin", image: "http://www.hopsandgrain.com/wp-content/uploads/2017/06/river-beer-lager.png"},
  { name: "78702", beer_style: "Kolsch", characteristic: "Light", brewery: "Hops and Grain Brewing", independent: "independent", city: "Austin", image: "http://www.hopsandgrain.com/wp-content/uploads/2017/03/78702-kolsch.png"},
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
