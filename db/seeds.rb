# Create Users
User.create!(
    username: 'johny_doe',
    email: 'hiiii@example.com',
    password: 'passwordy',
    
  )
  
    User.create!(
    username: 'janey_smith',
    email: 'usery@example.com',
    password: 'password'
  )

    admin = User.create!(
        username: "Admin2",
        email: "Admin2254@gmail.com",
        password: "Admin2254",
        role: "admin"
    )
    

  puts "Users seeding!"

  # Create Destinations
paris = Destination.create!(
    location: 'Paris',
    country: 'France',
    image_url: 'https://travel.usnews.com/dims4/USNEWS/00e9466/2147483647/resize/445x280%5E%3E/crop/445x280/quality/85/?url=https%3A%2F%2Ftravel.usnews.com%2Fimages%2Fgettyimages-520025941_5j9mOtt.jpg',
    user_id: admin.id
  )
  
  bali = Destination.create!(
    location: 'Bali',
    country: 'Indonesia',
    image_url: 'https://a.cdn-hotels.com/gdcs/production143/d1112/c4fedab1-4041-4db5-9245-97439472cf2c.jpg?impolicy=fcrop&w=800&h=533&q=medium',
    user_id: admin.id
  )
  puts "Destination.create seeding!"
  
  # Create more destinations (you can add 18 more)
  destination_list = [
    { location: 'New York City', country: 'USA', image_url: 'https://upload.wikimedia.org/wikipedia/commons/d/d2/New_York_Skyline_-2_%288111177937%29.jpg', user_id: admin.id},
    { location: 'Tokyo', country: 'Japan', image_url: 'https://i0.wp.com/www.theculturemap.com/wp-content/uploads/2015/05/tokyo-neon-lights.jpg?fit=1512%2C1008&ssl=1', user_id: admin.id},
    { location: 'Sydney', country: 'Australia', image_url: 'https://i.insider.com/5f3424f2988ee31668198a09?width=700', user_id: admin.id},
    { location: 'Rio de Janeiro', country: 'Brazil', image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Cidade_Maravilhosa.jpg/1200px-Cidade_Maravilhosa.jpg', user_id: admin.id},
    { location: 'Cape Town', country: 'South Africa', image_url: 'https://www.thoughtco.com/thmb/EepIF7qjAhqbRF7IDVscMSjUQ-Y=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1057137024-d3c6daf73fcb48d38ce252f5c6314e96.jpg', user_id: admin.id},
    { location: 'Bangkok', country: 'Thailand', image_url: 'https://a.cdn-hotels.com/gdcs/production59/d1143/fc0453c0-e10c-4c4b-b31e-2a95179ddca3.jpg', user_id: admin.id},
    { location: 'Barcelona', country: 'Spain', image_url: 'https://cdn.internationalliving.com/wp-content/uploads/2019/10/park-guell.jpg', user_id: admin.id},
    { location: 'Dubai', country: 'UAE', image_url: 'https://images.unsplash.com/flagged/photo-1559717865-a99cac1c95d8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZHViYWl8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60', user_id: admin.id},
    { location: 'Marrakech', country: 'Morocco', image_url: 'https://media.nomadicmatt.com/marguide.jpg', user_id: admin.id},
    { location: 'Machu Picchu', country: 'Peru', image_url: 'https://www.intrepidtravel.com/adventures/wp-content/uploads/2018/06/1.-Intrepid-Travel-peru_machupicchu.jpg', user_id: admin.id},
    { location: 'Santorini', country: 'Greece', image_url: 'https://i0.wp.com/www.hachettebookgroup.com/wp-content/uploads/2020/03/Santorini.png?resize=1083%2C723&ssl=1', user_id: admin.id},
    { location: 'Reykjavik', country: 'Iceland', image_url: 'https://www.thoughtco.com/thmb/qHQluwOCpde3AbIgv4qT9O6XhcU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-158525984-5b6df57dc9e77c005086b0ca.jpg', user_id: admin.id},
    { location: 'Vancouver', country: 'Canada', image_url: 'https://qph.cf2.quoracdn.net/main-qimg-4f1f1ddd1fd4baa8309f3431f02e947b-lq', user_id: admin.id},
    { location: 'Kyoto', country: 'Japan', image_url: 'https://boutiquejapan.com/wp-content/uploads/2019/07/yasaka-pagoda-higashiyama-kyoto-japan.jpg', user_id: admin.id},
    { location: 'Cairo', country: 'Egypt', image_url: 'https://egypttimetravel.com/wp-content/uploads/2020/06/Cairo-Egypt.jpg', user_id: admin.id},
    { location: 'Buenos Aires', country: 'Argentina', image_url: 'https://destinationlesstravel.com/wp-content/uploads/2022/08/Beautiful-View-of-the-city-of-Buenos-Aires-Argentina.jpg.webp', user_id: admin.id},
    { location: 'Queenstown', country: 'New Zealand', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', user_id: admin.id},
    { location: 'Maasai Mara', country: 'Kenya', image_url: 'https://images.unsplash.com/photo-1547970810-dc1eac37d174?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHdpbGRsaWZlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60', user_id: admin.id},
    { location: 'Mauritius', country: 'Mauritius', image_url: 'https://tour.epesicloud.com/app/storage/uploads/37/1675755043_72_pool.jpg', user_id: admin.id},
    { location: 'Amboseli', country: 'Kenya', image_url: 'https://tour.epesicloud.com/app/storage/uploads/37/1686048888_3_Elephants_At_Amboseli_National_Park_With_Bonfire_Adventures.jpg', user_id: admin.id},
    { location: 'Seychelles', country: 'Seychelles', image_url: 'https://tour.epesicloud.com/app/storage/uploads/37/1670405048_56_SEZLC__Feet_In_Sand_Dining.jpg', user_id: admin.id},
    { location: 'Diani', country: 'Kenya', image_url: 'https://tour.epesicloud.com/app/storage/uploads/37/1683886539_94_Mombasa_North_Coast_Pride_Inn_Paradise.png', user_id: admin.id},
    { location: 'Pretoria', country: 'South Africa', image_url: 'https://tour.epesicloud.com/app/storage/uploads/37/1671095042_80_table-mountain-cable-car.jpg', user_id: admin.id},
    { location: 'Mount Kenya', country: 'Kenya', image_url: 'https://tour.epesicloud.com/app/storage/uploads/37/1686061247_19_2_Giraffes_At_Mount_Kenya_With_Bonfire_Adventures.jpg', user_id: admin.id},
    { location: 'Nakuru', country: 'Kenya', image_url: 'https://destinationskenya.com/wp-content/uploads/2021/07/Nakuru-kenya.jpg', user_id: admin.id},
    
    # Add more destinations here
  ]
  puts "Destinations seeding!"
  
  # Create other destinations and assign them to variables
new_york = Destination.create!(destination_list[0].merge(user_id: admin.id))
tokyo = Destination.create!(destination_list[1].merge(user_id: admin.id))
sydney = Destination.create!(destination_list[2].merge(user_id: admin.id))
rio_de_janeiro = Destination.create!(destination_list[3].merge(user_id: admin.id))
cape_town = Destination.create!(destination_list[4].merge(user_id: admin.id))
bangkok = Destination.create!(destination_list[5].merge(user_id: admin.id))
barcelona = Destination.create!(destination_list[6].merge(user_id: admin.id))
dubai = Destination.create!(destination_list[7].merge(user_id: admin.id))
marrakech = Destination.create!(destination_list[8].merge(user_id: admin.id))
machu_picchu = Destination.create!(destination_list[9].merge(user_id: admin.id))
santorini = Destination.create!(destination_list[10].merge(user_id: admin.id))
reykjavik = Destination.create!(destination_list[11].merge(user_id: admin.id))
vancouver = Destination.create!(destination_list[12].merge(user_id: admin.id))
kyoto = Destination.create!(destination_list[13].merge(user_id: admin.id))
cairo = Destination.create!(destination_list[14].merge(user_id: admin.id))
buenos_aires = Destination.create!(destination_list[15].merge(user_id: admin.id))
queenstown = Destination.create!(destination_list[16].merge(user_id: admin.id))
maasai_mara = Destination.create!(destination_list[17].merge(user_id: admin.id))
mauritius = Destination.create!(destination_list[18].merge(user_id: admin.id))
amboseli = Destination.create!(destination_list[19].merge(user_id: admin.id))
seychelles = Destination.create!(destination_list[20].merge(user_id: admin.id))
diani = Destination.create!(destination_list[21].merge(user_id: admin.id))
pretoria = Destination.create!(destination_list[22].merge(user_id: admin.id))
mount_kenya = Destination.create!(destination_list[23].merge(user_id: admin.id))
nakuru = Destination.create!(destination_list[24].merge(user_id: admin.id))
  
  # Create Travel Packages
    TravelPackage.create!(
    name: 'Romantic Paris Getaway',
    description: 'Experience the romance of Paris with your loved one.',
    image_url: 'https://travel.usnews.com/dims4/USNEWS/00e9466/2147483647/resize/445x280%5E%3E/crop/445x280/quality/85/?url=https%3A%2F%2Ftravel.usnews.com%2Fimages%2Fgettyimages-520025941_5j9mOtt.jpg',
    pricing: 1500.0,
    itinerary: 'Day 1: Arrival in Paris...',
    booking_status: 'available',
    user_id: admin.id,
    destination_id: paris.id
  )
  
    TravelPackage.create!(
    name: 'Exotic Bali Adventure',
    description: 'Explore the exotic beauty of Bali through adventure activities.',
    image_url: 'https://travel.usnews.com/dims4/USNEWS/00e9466/2147483647/resize/445x280%5E%3E/crop/445x280/quality/85/?url=https%3A%2F%2Ftravel.usnews.com%2Fimages%2Fgettyimages-520025941_5j9mOtt.jpg',
    pricing: 1200.0,
    itinerary: 'Day 1: Arrival in Bali...',
    booking_status: 'available',
    user_id: admin.id,
    destination_id: bali.id
  )
  puts "Packages.create seeding!"
  
  # Create more travel packages for each destination (you can add 3 more per destination)
  travel_package_list = [
    
    { name: 'Luxury Experience in New York', description: 'Indulge in luxury in the heart of New York City.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 2000.0, itinerary: 'Day 1: Arrive in NYC...', booking_status: 'available', user_id: admin.id, destination_id: new_york.id },
    { name: 'Tokyo Cultural Tour', description: 'Immerse yourself in Tokyo\'s rich cultural heritage.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1300.0, itinerary: 'Day 1: Cultural highlights of Tokyo...', booking_status: 'available', user_id: admin.id, destination_id: new_york.id },
    # Tokyo
  { name: 'Tokyo Essence Tour', description: 'Discover the essence of Tokyo\'s traditional and modern blend.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1450.0, itinerary: 'Day 1: Exploring Tokyo\'s essence...', booking_status: 'available', user_id: admin.id, destination_id: tokyo.id },
  { name: 'Anime and Pop Culture Adventure', description: 'Dive into the world of anime and pop culture in Tokyo.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1300.0, itinerary: 'Day 1: Anime and pop culture exploration...', booking_status: 'available', user_id: admin.id, destination_id: tokyo.id },
  { name: 'Tokyo Gourmet Delights', description: 'Savor the gourmet delights and culinary treasures of Tokyo.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1550.0, itinerary: 'Day 1: Gourmet indulgence in Tokyo...', booking_status: 'available', user_id: admin.id, destination_id: tokyo.id },

    # Sydney
  { name: 'Sydney Harbor Cruise', description: 'Sail through Sydney Harbor and witness the city\'s iconic landmarks.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1700.0, itinerary: 'Day 1: Sydney Harbor exploration...', booking_status: 'available', user_id: admin.id, destination_id: sydney.id },
  { name: 'Sydney Beach Getaway', description: 'Relax and soak up the sun on Sydney\'s famous beaches.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1500.0, itinerary: 'Day 1: Beach relaxation in Sydney...', booking_status: 'available', user_id: admin.id, destination_id: sydney.id },
  { name: 'Sydney Cultural Experience', description: 'Immerse yourself in Sydney\'s diverse cultural scene.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1600.0, itinerary: 'Day 1: Cultural exploration in Sydney...', booking_status: 'available', user_id: admin.id, destination_id: sydney.id },

    # Rio de Janeiro
  { name: 'Rio Carnival Extravaganza', description: 'Join the vibrant and energetic Rio Carnival celebrations.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 2100.0, itinerary: 'Day 1: Rio Carnival festivities...', booking_status: 'available', user_id: admin.id, destination_id: rio_de_janeiro.id },
  { name: 'Rio Beach and Samba Tour', description: 'Experience the rhythm of samba and relax on Rio\'s stunning beaches.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1800.0, itinerary: 'Day 1: Beaches and samba in Rio...', booking_status: 'available', user_id: admin.id, destination_id: rio_de_janeiro.id },
  { name: 'Rio Rainforest Adventure', description: 'Embark on an exciting rainforest adventure in Rio de Janeiro.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1950.0, itinerary: 'Day 1: Rainforest exploration in Rio...', booking_status: 'available', user_id: admin.id, destination_id: rio_de_janeiro.id },

    # Cape Town
  { name: 'Cape Town Wine Tour', description: 'Indulge in a wine tasting journey through Cape Town\'s picturesque vineyards.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1550.0, itinerary: 'Day 1: Wine tasting in Cape Town...', booking_status: 'available', user_id: admin.id, destination_id: cape_town.id },
{ name: 'Cape Peninsula Discovery', description: 'Explore the stunning Cape Peninsula and its breathtaking landscapes.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1800.0, itinerary: 'Day 1: Cape Peninsula exploration...', booking_status: 'available', user_id: admin.id, destination_id: cape_town.id },
{ name: 'Cape Town Adventure Sports', description: 'Get your adrenaline pumping with thrilling adventure sports in Cape Town.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1700.0, itinerary: 'Day 1: Adventure sports in Cape Town...', booking_status: 'available', user_id: admin.id, destination_id: cape_town.id },

# Bangkok
{ name: 'Bangkok Temples and Palaces', description: 'Discover the ornate temples and grand palaces of Bangkok.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1450.0, itinerary: 'Day 1: Temples and palaces tour in Bangkok...', booking_status: 'available', user_id: admin.id, destination_id: bangkok.id },
{ name: 'Bangkok Street Food Safari', description: 'Embark on a culinary adventure sampling Bangkok\'s vibrant street food.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1300.0, itinerary: 'Day 1: Street food exploration in Bangkok...', booking_status: 'available', user_id: admin.id, destination_id: bangkok.id },
{ name: 'Bangkok Riverside Cruise', description: 'Cruise along the Chao Phraya River and admire Bangkok\'s riverside beauty.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1400.0, itinerary: 'Day 1: Riverside cruise in Bangkok...', booking_status: 'available', user_id: admin.id, destination_id: bangkok.id },

# Barcelona
{ name: 'Barcelona Architecture Tour', description: 'Marvel at Barcelona\'s stunning architectural wonders.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1650.0, itinerary: 'Day 1: Architectural wonders of Barcelona...', booking_status: 'available', user_id: admin.id, destination_id: barcelona.id },
{ name: 'Barcelona Tapas and Flamenco', description: 'Experience the vibrant world of tapas and flamenco in Barcelona.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1500.0, itinerary: 'Day 1: Tapas and flamenco experience...', booking_status: 'available', user_id: admin.id, destination_id: barcelona.id },
{ name: 'Barcelona Beach Retreat', description: 'Relax and unwind on Barcelona\'s beautiful beaches.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1550.0, itinerary: 'Day 1: Beach relaxation in Barcelona...', booking_status: 'available', user_id: admin.id, destination_id: barcelona.id },

# Dubai
{ name: 'Dubai Desert Safari', description: 'Embark on an exhilarating desert safari adventure in Dubai.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1900.0, itinerary: 'Day 1: Desert safari in Dubai...', booking_status: 'available', user_id: admin.id, destination_id: dubai.id },
{ name: 'Dubai Skyscraper Tour', description: 'Experience the awe-inspiring skyscrapers and modern architecture of Dubai.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1750.0, itinerary: 'Day 1: Skyscraper tour in Dubai...', booking_status: 'available', user_id: admin.id, destination_id: dubai.id },
{ name: 'Dubai Luxury Shopping Spree', description: 'Indulge in a luxury shopping experience in Dubai\'s extravagant malls.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 2000.0, itinerary: 'Day 1: Luxury shopping in Dubai...', booking_status: 'available', user_id: admin.id, destination_id: dubai.id },

# Marrakech
{ name: 'Marrakech Souk Adventure', description: 'Navigate the bustling souks of Marrakech and discover hidden treasures.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1350.0, itinerary: 'Day 1: Souk exploration in Marrakech...', booking_status: 'available', user_id: admin.id, destination_id: marrakech.id },
{ name: 'Marrakech Riad Stay', description: 'Experience authentic Moroccan hospitality in a traditional riad.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1500.0, itinerary: 'Day 1: Riad experience in Marrakech...', booking_status: 'available', user_id: admin.id, destination_id: marrakech.id },
{ name: 'Marrakech Atlas Mountains Trek', description: 'Embark on a trekking adventure through the stunning Atlas Mountains.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1650.0, itinerary: 'Day 1: Atlas Mountains trekking...', booking_status: 'available', user_id: admin.id, destination_id: marrakech.id },

# Machu Picchu
{ name: 'Machu Picchu Inca Trail', description: 'Embark on a trekking journey along the historic Inca Trail to Machu Picchu.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 2200.0, itinerary: 'Day 1: Inca Trail adventure...', booking_status: 'available', user_id: admin.id, destination_id: machu_picchu.id },
{ name: 'Machu Picchu Cultural Immersion', description: 'Immerse yourself in the cultural heritage of Machu Picchu and its surroundings.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 2000.0, itinerary: 'Day 1: Cultural immersion at Machu Picchu...', booking_status: 'available', user_id: admin.id, destination_id: machu_picchu.id },
{ name: 'Machu Picchu Sunset View', description: 'Witness the breathtaking sunset view over the ancient ruins of Machu Picchu.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 2100.0, itinerary: 'Day 1: Sunset view at Machu Picchu...', booking_status: 'available', user_id: admin.id, destination_id: machu_picchu.id },

# Santorini
{ name: 'Santorini Island Escape', description: 'Escape to the romantic and picturesque beauty of Santorini.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1900.0, itinerary: 'Day 1: Island relaxation in Santorini...', booking_status: 'available', user_id: admin.id, destination_id: santorini.id },
{ name: 'Santorini Wine Tasting', description: 'Enjoy wine tasting amidst Santorini\'s stunning vineyards and ocean views.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1750.0, itinerary: 'Day 1: Wine tasting in Santorini...', booking_status: 'available', user_id: admin.id, destination_id: santorini.id },
{ name: 'Santorini Sunset Cruise', description: 'Sail into the golden sunset along Santorini\'s breathtaking caldera.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1800.0, itinerary: 'Day 1: Sunset cruise in Santorini...', booking_status: 'available', user_id: admin.id, destination_id: santorini.id },

# Reykjavik
{ name: 'Reykjavik Northern Lights Expedition', description: 'Chase the magical Northern Lights in the skies above Reykjavik.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 2300.0, itinerary: 'Day 1: Northern Lights adventure in Reykjavik...', booking_status: 'available', user_id: admin.id, destination_id: reykjavik.id },
{ name: 'Reykjavik Blue Lagoon Retreat', description: 'Relax and rejuvenate in the soothing geothermal waters of the Blue Lagoon.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 2050.0, itinerary: 'Day 1: Blue Lagoon relaxation...', booking_status: 'available', user_id: admin.id, destination_id: reykjavik.id },
{ name: 'Reykjavik Glacier Adventure', description: 'Explore the icy wonders of glaciers on an exhilarating Reykjavik expedition.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 2200.0, itinerary: 'Day 1: Glacier exploration in Reykjavik...', booking_status: 'available', user_id: admin.id, destination_id: reykjavik.id },

# Vancouver
{ name: 'Vancouver Island Nature Retreat', description: 'Immerse yourself in the natural beauty of Vancouver Island.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1850.0, itinerary: 'Day 1: Nature retreat on Vancouver Island...', booking_status: 'available', user_id: admin.id, destination_id: vancouver.id },
{ name: 'Vancouver City Highlights', description: 'Discover the vibrant neighborhoods and attractions of Vancouver city.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1600.0, itinerary: 'Day 1: Exploring Vancouver city...', booking_status: 'available', user_id: admin.id, destination_id: vancouver.id },
{ name: 'Vancouver Adventure Sports', description: 'Get your adrenaline pumping with thrilling adventure sports in Vancouver.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1750.0, itinerary: 'Day 1: Adventure sports in Vancouver...', booking_status: 'available', user_id: admin.id, destination_id: vancouver.id },

# Kyoto
{ name: 'Kyoto Temples and Gardens', description: 'Experience the serenity of Kyoto\'s temples and traditional gardens.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1600.0, itinerary: 'Day 1: Temple and garden exploration in Kyoto...', booking_status: 'available', user_id: admin.id, destination_id: kyoto.id },
{ name: 'Kyoto Tea Ceremony Experience', description: 'Participate in a traditional Japanese tea ceremony in Kyoto.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1450.0, itinerary: 'Day 1: Tea ceremony experience in Kyoto...', booking_status: 'available', user_id: admin.id, destination_id: kyoto.id },
{ name: 'Kyoto Cherry Blossom Tour', description: 'Witness the enchanting beauty of cherry blossoms in full bloom in Kyoto.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1550.0, itinerary: 'Day 1: Cherry blossom viewing in Kyoto...', booking_status: 'available', user_id: admin.id, destination_id: kyoto.id },

# Cairo
{ name: 'Cairo Pyramids and Sphinx Tour', description: 'Explore the ancient wonders of the pyramids and sphinx in Cairo.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1750.0, itinerary: 'Day 1: Pyramids and sphinx exploration in Cairo...', booking_status: 'available', user_id: admin.id, destination_id: cairo.id },
{ name: 'Cairo Egyptian Museum Discovery', description: 'Delve into Egypt\'s rich history and artifacts at the Egyptian Museum.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1600.0, itinerary: 'Day 1: Museum discovery in Cairo...', booking_status: 'available', user_id: admin.id, destination_id: cairo.id },
{ name: 'Cairo Nile River Cruise', description: 'Sail along the majestic Nile River and take in Cairo\'s riverside beauty.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1650.0, itinerary: 'Day 1: Nile River cruise in Cairo...', booking_status: 'available', user_id: admin.id, destination_id: cairo.id },

# Buenos Aires
{ name: 'Buenos Aires Tango Experience', description: 'Immerse yourself in the passionate world of tango in Buenos Aires.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1500.0, itinerary: 'Day 1: Tango experience in Buenos Aires...', booking_status: 'available', user_id: admin.id, destination_id: buenos_aires.id },
{ name: 'Buenos Aires Culinary Tour', description: 'Embark on a culinary journey exploring the flavors of Buenos Aires.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1400.0, itinerary: 'Day 1: Culinary exploration in Buenos Aires...', booking_status: 'available', user_id: admin.id, destination_id: buenos_aires.id },
{ name: 'Buenos Aires Street Art Discovery', description: 'Discover the vibrant street art scene that adorns Buenos Aires\' walls.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1350.0, itinerary: 'Day 1: Street art discovery in Buenos Aires...', booking_status: 'available', user_id: admin.id, destination_id: buenos_aires.id },

# Queenstown
{ name: 'Queenstown Adventure Sports', description: 'Get your adrenaline pumping with thrilling adventure sports in Queenstown.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 2100.0, itinerary: 'Day 1: Adventure sports in Queenstown...', booking_status: 'available', user_id: admin.id, destination_id: queenstown.id },
{ name: 'Queenstown Scenic Helicopter Tour', description: 'Soar above Queenstown\'s stunning landscapes on a scenic helicopter tour.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 1900.0, itinerary: 'Day 1: Scenic helicopter tour in Queenstown...', booking_status: 'available', user_id: admin.id, destination_id: queenstown.id },
{ name: 'Queenstown Wine Tasting', description: 'Indulge in a wine tasting journey through the vineyards surrounding Queenstown.', image_url: 'https://media.nomadicmatt.com/queenstownguide.jpg', pricing: 2000.0, itinerary: 'Day 1: Wine tasting in Queenstown...', booking_status: 'available', user_id: admin.id, destination_id: queenstown.id }
    # Add more travel packages here
  ]
  puts "Packages seeding!"

  TravelPackage.create!(travel_package_list)
  
  
  puts "✅ Done seeding!"