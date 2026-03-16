import 'package:travel_app/core/models/trip_model.dart';

final List<Trip> allTrips = [
  Trip(
    id: 1,
    name: 'Iconic Brazil',
    country: 'Brazil',
    category: 'America',
    image:
        'https://images.unsplash.com/photo-1483729558449-99ef09a8c325?w=800&fit=crop',
    rating: 4.8,
    reviews: 56,
    price: 659.0,
    days: 8,
    description:
        "Experience the vibrant heart of South America, from the peaks of Rio to the depths of the Amazon.",
    accommodation: "Boutique hotels and traditional eco-lodges.",
    detailedSchedule: [
      ScheduleItem(
        dayTitle: "Day 1",
        title: "Arrival to Rio de Janeiro",
        dayImage:
            "https://images.unsplash.com/photo-1483729558449-99ef09a8c325?w=400",
        morning: "Arrive in Rio de Janeiro and transfer to your hotel.",
        afternoon: "Free time to relax or explore the nearby area.",
        evening: "Welcome dinner at a traditional Brazilian restaurant.",
      ),
      ScheduleItem(
        dayTitle: "Day 2",
        title: "Rio de Janeiro Highlights",
        dayImage:
            "https://images.unsplash.com/photo-1516306580123-e6e52b1b7b5f?w=400",
        morning: "Visit Christ the Redeemer and Corcovado Mountain.",
        afternoon: "Cable car ride to the top of Sugarloaf Mountain.",
        evening: "Enjoy a samba show and local nightlife.",
      ),
    ],
  ),
  Trip(
    id: 2,
    name: 'Paris Romance',
    country: 'France',
    category: 'Europe',
    image:
        'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=800&fit=crop',
    rating: 4.9,
    reviews: 1247,
    price: 890.0,
    days: 4,
    description: "The ultimate city break for love and culture.",
    accommodation: "Le Marais luxury apartments.",
    detailedSchedule: [
      ScheduleItem(
        dayTitle: "Day 1",
        title: "City of Light Arrival",
        dayImage:
            "https://images.unsplash.com/photo-1431274172761-fca41d930114?w=400",
        morning: "Check-in at the hotel with views of the Seine.",
        afternoon: "Guided walking tour through Montmartre.",
        evening: "Evening river cruise with champagne.",
      ),
    ],
  ),
  Trip(
    id: 3,
    name: 'Majestic Japan',
    country: 'Japan',
    category: 'Asia',
    image:
        'https://images.unsplash.com/photo-1542051841857-5f90071e7989?w=800&fit=crop',
    rating: 4.8,
    reviews: 982,
    price: 1250.0,
    days: 10,
    description:
        "Journey through a land where ancient traditions meet futuristic cities. From serene temples to bustling streets, Japan is a study in contrasts.",
    accommodation: "A mix of traditional Ryokans and modern city hotels.",
    detailedSchedule: [
      ScheduleItem(
        dayTitle: "Day 1-3",
        title: "Tokyo's Neon Wonderland",
        dayImage:
            "https://images.unsplash.com/photo-1503899036084-c55cdd92da26?w=400",
        morning: "Explore the vibrant Shibuya Crossing and Harajuku district.",
        afternoon: "Visit the ancient Senso-ji Temple in Asakusa.",
        evening: "Experience world-class dining in Shinjuku.",
      ),
      ScheduleItem(
        dayTitle: "Day 4-6",
        title: "Kyoto's Timeless Temples",
        dayImage:
            "https://images.unsplash.com/photo-1493976040374-85c8e12f0c0e?w=400",
        morning: "Walk through the iconic Fushimi Inari Shrine.",
        afternoon: "Stroll through the Arashiyama Bamboo Grove.",
        evening: "Discover the geisha district of Gion.",
      ),
    ],
  ),
  Trip(
    id: 4,
    name: 'Ancient Egypt',
    country: 'Egypt',
    category: 'Africa',
    image:
        'https://images.unsplash.com/photo-1569949381669-ecf31ae8e613?w=800&fit=crop',
    rating: 4.7,
    reviews: 753,
    price: 980.0,
    days: 7,
    description:
        "Uncover the mysteries of the pharaohs, cruise the legendary Nile, and stand in awe of the Great Pyramids of Giza.",
    accommodation: "5-star Nile cruise ship and a luxury hotel in Cairo.",
    detailedSchedule: [
      ScheduleItem(
        dayTitle: "Day 1-2",
        title: "Cairo & The Great Pyramids",
        dayImage:
            "https://images.unsplash.com/photo-1503177119275-0aa32b3a9368?w=400",
        morning: "Arrive in Cairo and visit the Egyptian Museum.",
        afternoon: "Explore the Giza Plateau, the Sphinx, and the Pyramids.",
        evening: "Enjoy a traditional dinner with views of the pyramids.",
      ),
      ScheduleItem(
        dayTitle: "Day 3-5",
        title: "Nile River Cruise",
        dayImage:
            "https://images.unsplash.com/photo-1539635278303-d4002c07eae3?w=400",
        morning: "Fly to Luxor and board your cruise ship.",
        afternoon: "Visit the temples of Karnak and Luxor.",
        evening: "Sail down the Nile, stopping at Edfu and Kom Ombo.",
      ),
    ],
  ),
  Trip(
    id: 5,
    name: 'Australian Adventure',
    country: 'Australia',
    category: 'Oceania',
    image:
        'https://images.unsplash.com/photo-1506973035872-a4ec16b8e8d9?w=800&fit=crop',
    rating: 4.8,
    reviews: 1102,
    price: 1500.0,
    days: 12,
    description:
        "From the iconic Sydney Opera House to the vibrant underwater world of the Great Barrier Reef, experience the best of Down Under.",
    accommodation: "City hotels and coastal resorts.",
    detailedSchedule: [
      ScheduleItem(
        dayTitle: "Day 1-4",
        title: "Sydney Sights",
        dayImage:
            "https://images.unsplash.com/photo-1506973035872-a4ec16b8e8d9?w=400",
        morning: "Tour the Sydney Opera House and climb the Harbour Bridge.",
        afternoon: "Relax on the famous Bondi Beach.",
        evening: "Explore the historic Rocks district.",
      ),
      ScheduleItem(
        dayTitle: "Day 5-8",
        title: "Great Barrier Reef",
        dayImage:
            "https://images.unsplash.com/photo-1544551763-46a013bb70d5?w=400",
        morning: "Fly to Cairns and take a catamaran to the reef.",
        afternoon: "Snorkel or dive among the vibrant coral and marine life.",
        evening: "Relax at your beachfront resort.",
      ),
    ],
  ),
  Trip(
    id: 6,
    name: 'Kenyan Safari',
    country: 'Kenya',
    category: 'Africa',
    image:
        'https://images.unsplash.com/photo-1519066629447-267fffa62d4b?w=800&fit=crop',
    rating: 4.9,
    reviews: 830,
    price: 1800.0,
    days: 9,
    description:
        "Witness the Great Migration in the Maasai Mara and encounter the 'Big Five' in their natural habitat on this unforgettable safari.",
    accommodation: "Luxury safari lodges and tented camps.",
    detailedSchedule: [
      ScheduleItem(
        dayTitle: "Day 1-3",
        title: "Amboseli National Park",
        dayImage:
            "https://images.unsplash.com/photo-1516426122078-c23e76319801?w=400",
        morning:
            "Arrive in Nairobi and transfer to Amboseli, with views of Mount Kilimanjaro.",
        afternoon: "Afternoon game drive to see vast elephant herds.",
        evening: "Dinner at the lodge.",
      ),
      ScheduleItem(
        dayTitle: "Day 4-7",
        title: "Maasai Mara Reserve",
        dayImage:
            "https://images.unsplash.com/photo-1519066629447-267fffa62d4b?w=400",
        morning: "Fly to the Maasai Mara, home of the Great Migration.",
        afternoon:
            "Full-day game drives in search of lions, leopards, and cheetahs.",
        evening: "Visit a local Maasai village to learn about their culture.",
      ),
    ],
  ),
  Trip(
    id: 7,
    name: 'Italy Classics',
    country: 'Italy',
    category: 'Europe',
    image:
        'https://images.unsplash.com/photo-1515859005217-8a1f08870f59?w=800&fit=crop',
    rating: 4.8,
    reviews: 1500,
    price: 1400.0,
    days: 10,
    description:
        "Discover the timeless beauty of Italy, from the ancient ruins of Rome to the romantic canals of Venice and the artistic heart of Florence.",
    accommodation: "Charming city hotels and a classic Venetian guesthouse.",
    detailedSchedule: [
      ScheduleItem(
        dayTitle: "Day 1-3",
        title: "Eternal Rome",
        dayImage:
            "https://images.unsplash.com/photo-1529260830199-42c24126f198?w=400",
        morning: "Explore the Colosseum, Roman Forum, and Palatine Hill.",
        afternoon:
            "Visit Vatican City, St. Peter's Basilica, and the Sistine Chapel.",
        evening: "Toss a coin in the Trevi Fountain and enjoy pasta dinner.",
      ),
      ScheduleItem(
        dayTitle: "Day 4-6",
        title: "Renaissance Florence",
        dayImage:
            "https://images.unsplash.com/photo-1541123356219-284ebe98ae3b?w=400",
        morning: "Admire Michelangelo's David at the Galleria dell'Accademia.",
        afternoon: "Climb Giotto's Bell Tower for panoramic city views.",
        evening: "Stroll across the Ponte Vecchio at sunset.",
      ),
    ],
  ),
  Trip(
    id: 8,
    name: 'Canadian Rockies',
    country: 'Canada',
    category: 'America',
    image:
        'https://images.unsplash.com/photo-1503614472-8c93d56e92ce?w=800&fit=crop',
    rating: 4.9,
    reviews: 950,
    price: 2100.0,
    days: 8,
    description:
        "Explore the breathtaking landscapes of the Canadian Rockies. Witness turquoise lakes, towering glaciers, and abundant wildlife in Banff and Jasper National Parks.",
    accommodation: "Mountain lodges and cozy chalets.",
    detailedSchedule: [
      ScheduleItem(
        dayTitle: "Day 1-4",
        title: "Banff National Park",
        dayImage:
            "https://images.unsplash.com/photo-1503614472-8c93d56e92ce?w=400",
        morning: "Canoe on the stunning, turquoise waters of Lake Louise.",
        afternoon: "Hike to the Plain of Six Glaciers Teahouse.",
        evening: "Relax in the Banff Upper Hot Springs.",
      ),
      ScheduleItem(
        dayTitle: "Day 5-7",
        title: "Jasper & Icefields Parkway",
        dayImage:
            "https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?w=400",
        morning: "Drive the scenic Icefields Parkway.",
        afternoon: "Walk on the Athabasca Glacier.",
        evening: "Stargazing in Jasper, a designated dark sky preserve.",
      ),
    ],
  ),
  Trip(
    id: 9,
    name: 'Wonders of Peru',
    country: 'Peru',
    category: 'America',
    image:
        'https://images.unsplash.com/photo-1526392060635-9d6019884377?w=800&fit=crop',
    rating: 4.8,
    reviews: 880,
    price: 1750.0,
    days: 9,
    description:
        "Embark on a journey to the heart of the Inca Empire. Explore the culinary scene in Lima, discover the Sacred Valley, and be mesmerized by the ancient citadel of Machu Picchu.",
    accommodation: "Boutique hotels and a jungle lodge.",
    detailedSchedule: [
      ScheduleItem(
        dayTitle: "Day 1-3",
        title: "Cusco & Sacred Valley",
        dayImage:
            "https://images.unsplash.com/photo-1526392060635-9d6019884377?w=400",
        morning: "Acclimatize to the altitude in the historic city of Cusco.",
        afternoon: "Explore the Inca ruins of Ollantaytambo.",
        evening: "Visit a local market in Pisac.",
      ),
      ScheduleItem(
        dayTitle: "Day 4-5",
        title: "Machu Picchu",
        dayImage:
            "https://images.unsplash.com/photo-1509216242873-7786f446f465?w=400",
        morning: "Take the scenic train to Aguas Calientes.",
        afternoon: "Enjoy a guided tour of the lost city of Machu Picchu.",
        evening: "Watch the sunset over the Andes.",
      ),
    ],
  ),
  Trip(
    id: 10,
    name: 'Greek Islands Hopping',
    country: 'Greece',
    category: 'Europe',
    image:
        'https://images.unsplash.com/photo-1516483638261-f4dbaf036963?w=800&fit=crop',
    rating: 4.9,
    reviews: 2100,
    price: 1600.0,
    days: 7,
    description:
        "Live the dream of island hopping in the Aegean Sea. Witness iconic sunsets in Santorini, party in Mykonos, and discover the ancient history of Crete.",
    accommodation: "Whitewashed villas and seaside hotels.",
    detailedSchedule: [
      ScheduleItem(
        dayTitle: "Day 1-3",
        title: "Santorini Sunsets",
        dayImage:
            "https://images.unsplash.com/photo-1516483638261-f4dbaf036963?w=400",
        morning: "Explore the cliffside villages of Oia and Fira.",
        afternoon: "Relax on the unique Red Beach.",
        evening: "Watch the world-famous sunset in Oia.",
      ),
      ScheduleItem(
        dayTitle: "Day 4-6",
        title: "Mykonos Vibes",
        dayImage:
            "https://images.unsplash.com/photo-1516483638261-f4dbaf036963?w=400",
        morning: "Wander through the charming streets of Mykonos Town.",
        afternoon: "Enjoy the lively atmosphere at Paradise Beach.",
        evening: "Experience the island's vibrant nightlife.",
      ),
    ],
  ),
  Trip(
    id: 11,
    name: 'Thailand Adventure',
    country: 'Thailand',
    category: 'Asia',
    image:
        'https://images.unsplash.com/photo-1528181304800-259b08848526?w=800&fit=crop',
    rating: 4.7,
    reviews: 1350,
    price: 950.0,
    days: 12,
    description:
        "Experience the 'Land of Smiles'. From the bustling markets of Bangkok to the tranquil temples of Chiang Mai and the stunning beaches of the south.",
    accommodation: "City hotels, jungle bungalows, and beach resorts.",
    detailedSchedule: [
      ScheduleItem(
        dayTitle: "Day 1-3",
        title: "Bangkok Buzz",
        dayImage:
            "https://images.unsplash.com/photo-1528181304800-259b08848526?w=400",
        morning: "Visit the magnificent Grand Palace and Wat Pho.",
        afternoon: "Take a long-tail boat tour through the canals.",
        evening: "Explore the vibrant street food scene in Chinatown.",
      ),
      ScheduleItem(
        dayTitle: "Day 4-7",
        title: "Chiang Mai Culture",
        dayImage:
            "https://images.unsplash.com/photo-1504214208698-ea1919a23562?w=400",
        morning: "Visit an ethical elephant sanctuary.",
        afternoon: "Take a Thai cooking class.",
        evening: "Explore the Night Bazaar.",
      ),
    ],
  ),
  Trip(
    id: 12,
    name: 'New Zealand Discovery',
    country: 'New Zealand',
    category: 'Oceania',
    image:
        'https://images.unsplash.com/photo-1507699622108-4be3abd695ad?w=800&fit=crop',
    rating: 4.9,
    reviews: 1200,
    price: 2500.0,
    days: 14,
    description:
        "Journey through Middle-earth. Experience the adventure capital of Queenstown, the dramatic fjords of Milford Sound, and the geothermal wonders of Rotorua.",
    accommodation: "Modern hotels and scenic lodges.",
    detailedSchedule: [
      ScheduleItem(
        dayTitle: "Day 1-5",
        title: "Queenstown Adrenaline",
        dayImage:
            "https://images.unsplash.com/photo-1507699622108-4be3abd695ad?w=400",
        morning: "Experience the thrill of a bungee jump or canyon swing.",
        afternoon: "Take the Skyline Gondola for panoramic views.",
        evening: "Enjoy a Fergburger, a local institution.",
      ),
      ScheduleItem(
        dayTitle: "Day 6-9",
        title: "Fiordland National Park",
        dayImage:
            "https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?w=400",
        morning: "Take an overnight cruise on the stunning Milford Sound.",
        afternoon: "Kayak in the fjord and spot seals and dolphins.",
        evening: "Stargaze from the deck of your boat.",
      ),
    ],
  ),
  Trip(
    id: 13,
    name: 'Moroccan Dreams',
    country: 'Morocco',
    category: 'Africa',
    image:
        'https://images.unsplash.com/photo-1539020140153-e479b8c22e70?w=800&fit=crop',
    rating: 4.6,
    reviews: 680,
    price: 1100.0,
    days: 8,
    description:
        "Immerse yourself in the vibrant colors and culture of Morocco. Navigate the bustling souks of Marrakech, ride a camel into the Sahara desert, and explore ancient kasbahs.",
    accommodation: "Traditional Riads and a desert camp.",
    detailedSchedule: [
      ScheduleItem(
        dayTitle: "Day 1-3",
        title: "Marrakech Medina",
        dayImage:
            "https://images.unsplash.com/photo-1539020140153-e479b8c22e70?w=400",
        morning: "Get lost in the maze-like souks of the Medina.",
        afternoon: "Visit the Jardin Majorelle, a beautiful botanical garden.",
        evening: "Experience the spectacle of Jemaa el-Fnaa square at night.",
      ),
      ScheduleItem(
        dayTitle: "Day 4-6",
        title: "Sahara Desert Expedition",
        dayImage:
            "https://images.unsplash.com/photo-1488190211105-8b0e65b80b4e?w=400",
        morning: "Journey through the Atlas Mountains.",
        afternoon: "Ride a camel to your desert camp for sunset.",
        evening: "Enjoy traditional Berber music under the stars.",
      ),
    ],
  ),
  Trip(
    id: 14,
    name: 'Spanish Fiesta',
    country: 'Spain',
    category: 'Europe',
    image:
        'https://images.unsplash.com/photo-1539037116277-4db20889f2d4?w=800&fit=crop',
    rating: 4.7,
    reviews: 1150,
    price: 1300.0,
    days: 9,
    description:
        "Experience the passion of Spain. From Gaudi's architectural wonders in Barcelona to the royal history of Madrid and the flamenco rhythms of Andalusia.",
    accommodation: "Stylish city hotels.",
    detailedSchedule: [
      ScheduleItem(
        dayTitle: "Day 1-4",
        title: "Barcelona's Art & Architecture",
        dayImage:
            "https://images.unsplash.com/photo-1539037116277-4db20889f2d4?w=400",
        morning: "Marvel at Gaudí's Sagrada Família.",
        afternoon: "Wander through the whimsical Park Güell.",
        evening: "Explore the Gothic Quarter and enjoy tapas.",
      ),
      ScheduleItem(
        dayTitle: "Day 5-8",
        title: "Madrid's Royal Flair",
        dayImage:
            "https://images.unsplash.com/photo-1543783207-b04695a43538?w=400",
        morning: "Tour the opulent Royal Palace of Madrid.",
        afternoon:
            "See masterpieces by Goya and Velázquez at the Prado Museum.",
        evening: "Experience a passionate flamenco show.",
      ),
    ],
  ),
  Trip(
    id: 15,
    name: 'Vietnam Journey',
    country: 'Vietnam',
    category: 'Asia',
    image:
        'https://images.unsplash.com/photo-1528127269322-539801943592?w=800&fit=crop',
    rating: 4.8,
    reviews: 990,
    price: 1050.0,
    days: 11,
    description:
        "Discover the rich history and stunning landscapes of Vietnam. Cruise through the limestone karsts of Ha Long Bay, explore the ancient town of Hoi An, and experience the energy of Ho Chi Minh City.",
    accommodation: "Boutique hotels and an overnight cruise boat.",
    detailedSchedule: [
      ScheduleItem(
        dayTitle: "Day 1-3",
        title: "Hanoi & Ha Long Bay",
        dayImage:
            "https://images.unsplash.com/photo-1528127269322-539801943592?w=400",
        morning: "Explore Hanoi's Old Quarter by cyclo.",
        afternoon: "Embark on an overnight cruise in the stunning Ha Long Bay.",
        evening: "Kayak or swim in the emerald waters.",
      ),
      ScheduleItem(
        dayTitle: "Day 4-7",
        title: "Charming Hoi An",
        dayImage:
            "https://images.unsplash.com/photo-1509023464722-18d996393ca8?w=400",
        morning: "Wander through the lantern-lit streets of the Ancient Town.",
        afternoon: "Get custom-tailored clothing made.",
        evening: "Release a lantern on the Thu Bon River for good luck.",
      ),
    ],
  ),
  Trip(
    id: 16,
    name: "Iceland's Northern Lights",
    country: 'Iceland',
    category: 'Europe',
    image:
        'https://images.unsplash.com/photo-1476610182048-b716b8518aae?w=800&fit=crop',
    rating: 4.9,
    reviews: 1800,
    price: 2200.0,
    days: 6,
    description:
        "Chase the magical Aurora Borealis across Iceland's otherworldly landscapes. Explore the Golden Circle, relax in the Blue Lagoon, and walk on black sand beaches.",
    accommodation: "Modern hotels in Reykjavik and countryside inns.",
    detailedSchedule: [
      ScheduleItem(
        dayTitle: "Day 1-2",
        title: "Reykjavik & Blue Lagoon",
        dayImage:
            "https://images.unsplash.com/photo-1476610182048-b716b8518aae?w=400",
        morning: "Explore the vibrant capital city of Reykjavik.",
        afternoon:
            "Relax and rejuvenate in the geothermal waters of the Blue Lagoon.",
        evening: "Enjoy dinner at a top-rated restaurant in the city.",
      ),
      ScheduleItem(
        dayTitle: "Day 3-5",
        title: "Golden Circle & Aurora Hunt",
        dayImage:
            "https://images.unsplash.com/photo-1476610182048-b716b8518aae?w=400",
        morning:
            "Visit Þingvellir National Park, a UNESCO World Heritage site.",
        afternoon:
            "Witness the erupting geysers at Geysir and the powerful Gullfoss waterfall.",
        evening:
            "Head out of the city for a chance to see the Northern Lights.",
      ),
    ],
  ),
];
