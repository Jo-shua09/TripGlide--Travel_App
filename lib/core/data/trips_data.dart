class Trip {
  final String category;
  final String name;
  final String country;
  final String image;
  final double rating;
  final int reviews;
  final String description;
  final List<String> schedule;
  final String accommodation;

  const Trip({
    required this.category,
    required this.name,
    required this.country,
    required this.image,
    required this.rating,
    required this.reviews,
    required this.description,
    required this.schedule,
    required this.accommodation,
  });
}

const allTrips = [
  Trip(
    category: 'Europe',
    name: 'Paris Romantic Getaway',
    country: 'France',
    image:
        'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=800&fit=crop',
    rating: 4.9,
    reviews: 1247,
    description:
        '''Discover the City of Love with iconic Eiffel Tower views, Seine River cruises, and gourmet French cuisine. Stroll hand-in-hand through charming Montmartre, visit the majestic Louvre Museum housing the Mona Lisa, and indulge in world-class patisseries. Perfect for couples seeking romance and elegance. Includes private guided tours and sunset dinners.''',
    schedule: [
      'Day 1: Arrival in Paris, Eiffel Tower visit & Seine cruise',
      'Day 2: Louvre Museum & Notre-Dame exploration',
      'Day 3: Montmartre artists quarter & Moulin Rouge show',
      'Day 4: Versailles Palace day trip & farewell dinner',
    ],
    accommodation:
        'Luxury 5-star hotel in Le Marais district with Eiffel views',
  ),
  Trip(
    category: 'Asia',
    name: 'Tokyo Urban Adventure',
    country: 'Japan',
    image:
        'https://images.unsplash.com/photo-1540959733332-eab4deabeeaf?w=800&fit=crop',
    rating: 4.8,
    reviews: 956,
    description:
        '''Dive into futuristic Tokyo: neon Shibuya Crossing, serene Senso-ji Temple, and Michelin-starred sushi. Experience bullet trains, robot restaurants, and cherry blossom parks. Blend ancient traditions with cutting-edge tech in this vibrant metropolis. Includes sumo wrestling viewing and tea ceremonies.''',
    schedule: [
      'Day 1: Shibuya & Harajuku fashion district',
      'Day 2: Asakusa Temple & Akihabara electronics',
      'Day 3: Tsukiji fish market & Ginza shopping',
      'Day 4: Day trip to Mount Fuji',
    ],
    accommodation: 'Modern ryokan-style hotel in Shinjuku with onsen baths',
  ),
  Trip(
    category: 'Asia',
    name: 'Bali Tropical Paradise',
    country: 'Indonesia',
    image:
        'https://images.unsplash.com/photo-1551632811-561732d1e306?w=800&fit=crop',
    rating: 5.0,
    reviews: 2034,
    description:
        '''Unwind in Bali\'s stunning beaches, lush rice terraces, and spiritual temples. Surf world-class waves in Ubud, spa-hop in Seminyak, and snorkel coral reefs. Yoga retreats, infinity pools, and fresh tropical fruits await. Authentic Balinese culture and healing vibes.''',
    schedule: [
      'Day 1: Ubud monkey forest & rice terraces',
      'Day 2: Beach day in Seminyak & spa relaxation',
      'Day 3: Uluwatu Temple & Kecak fire dance',
      'Day 4: Nusa Penida island hopping & snorkeling',
      'Day 5: Tanah Lot sunset temple visit',
    ],
    accommodation:
        'Beachfront villa resort with private infinity pool and yoga pavilion',
  ),
  Trip(
    category: 'America',
    name: 'New York City Lights',
    country: 'USA',
    image:
        'https://images.unsplash.com/photo-1519046904884-53103b34b206?w=800&fit=crop',
    rating: 4.7,
    reviews: 1789,
    description:
        '''The Big Apple awaits: Times Square buzz, Central Park picnics, and Broadway shows. Ascend Empire State Building, ferry to Statue of Liberty, and devour street food from pizza to bagels. Endless energy, skyscrapers, and cultural melting pot.''',
    schedule: [
      'Day 1: Manhattan skyline & Times Square',
      'Day 2: Central Park & Metropolitan Museum',
      'Day 3: Statue of Liberty & 9/11 Memorial',
      'Day 4: Broadway show & High Line walk',
    ],
    accommodation: 'Trendy boutique hotel in Midtown Manhattan',
  ),
  Trip(
    category: 'America',
    name: 'Machu Picchu Wonder',
    country: 'Peru',
    image:
        'https://images.unsplash.com/photo-1571814861442-84a23c7fc4b2?w=800&fit=crop',
    rating: 4.9,
    reviews: 892,
    description:
        '''Trek to the ancient Inca citadel of Machu Picchu via the iconic Inca Trail. Explore Cusco\'s colonial streets, Sacred Valley markets, and Andean landscapes. Mystical ruins, llamas, and high-altitude adventures for history buffs.''',
    schedule: [
      'Day 1: Cusco acclimatization & city tour',
      'Day 2-4: Inca Trail trek to Machu Picchu',
      'Day 5: Machu Picchu sunrise & return',
    ],
    accommodation: 'Historic boutique hotel in Cusco & trail lodges',
  ),
  Trip(
    category: 'Europe',
    name: 'Santorini Sunset Bliss',
    country: 'Greece',
    image:
        'https://images.unsplash.com/photo-1543782249-3c844f7bbb6b?w=800&fit=crop',
    rating: 4.9,
    reviews: 1654,
    description:
        '''White-washed cliffs, blue-domed churches, and caldera sunsets in Santorini. Wine tasting in volcanic vineyards, black sand beaches, and luxury catamaran cruises. Cycladic island paradise for honeymoons and photographers.''',
    schedule: [
      'Day 1: Oia sunset viewpoint & windmills',
      'Day 2: Fira & caldera hike',
      'Day 3: Red Beach & Akrotiri ruins',
      'Day 4: Wine tour & boat trip to volcano',
    ],
    accommodation:
        'Cave suite hotel with private infinity pool overlooking Aegean Sea',
  ),
  Trip(
    category: 'Africa',
    name: 'Cape Town Coastal',
    country: 'South Africa',
    image:
        'https://images.unsplash.com/photo-1552566626-52f8b828add9?w=800&fit=crop',
    rating: 4.6,
    reviews: 734,
    description:
        '''Table Mountain vistas, penguin beaches, and wine estates in Cape Town. Safari drives in nearby reserves, Robben Island history, and vibrant V&A Waterfront. Adventure and scenery combined.''',
    schedule: [
      'Day 1: Table Mountain cable car & Kirstenbosch gardens',
      'Day 2: Cape Peninsula penguins & Cape Point',
      'Day 3: Wine tasting in Stellenbosch',
      'Day 4: Robben Island & waterfront',
    ],
    accommodation: 'Ocean-view apartment in Camps Bay',
  ),
  Trip(
    category: 'Europe',
    name: 'Amalfi Coast Drive',
    country: 'Italy',
    image:
        'https://images.unsplash.com/photo-1559827260-d70f73b3fb34?w=800&fit=crop',
    rating: 4.8,
    reviews: 1123,
    description:
        '''Scenic coastal roads from Positano to Amalfi: lemon groves, cliffside villages, and Mediterranean seafood. Boat tours to hidden coves, Path of the Gods hike, and Renaissance Pompeii. Italian dolce vita at its best.''',
    schedule: [
      'Day 1: Positano beaches & village stroll',
      'Day 2: Amalfi & Ravello gardens',
      'Day 3: Path of the Gods hike',
      'Day 4: Pompeii ruins & Sorrento',
    ],
    accommodation: 'Clifftop hotel with sea views in Praiano',
  ),
  Trip(
    category: 'America',
    name: 'Banff National Park',
    country: 'Canada',
    image:
        'https://images.unsplash.com/photo-1441974231531-c6227db76b6e?w=800&fit=crop',
    rating: 4.9,
    reviews: 1456,
    description:
        '''Turquoise lakes, glacier hikes, and wildlife in Rocky Mountains. Lake Louise canoeing, Moraine Lake photography, and Banff hot springs. Nature lover\'s dream in crisp alpine air.''',
    schedule: [
      'Day 1: Lake Louise & canoeing',
      'Day 2: Moraine Lake & Valley of the Ten Peaks',
      'Day 3: Glacier adventure & Columbia Icefield',
      'Day 4: Banff town & hot springs',
    ],
    accommodation: 'Fairmont Chateau-style lodge by the lake',
  ),
  Trip(
    category: 'Africa',
    name: 'Marrakech Exotic',
    country: 'Morocco',
    image:
        'https://images.unsplash.com/photo-1518221433427-916fb6410233?w=800&fit=crop',
    rating: 4.7,
    reviews: 987,
    description:
        '''Souks of Jemaa el-Fna, riads with courtyards, and Atlas Mountain excursions. Tagine feasts, hammam spas, and camel treks in Sahara nearby. Sensory overload of spices, colors, and Berber culture.''',
    schedule: [
      'Day 1: Medina souks & night market',
      'Day 2: Bahia Palace & Saadian tombs',
      'Day 3: Day trip to Ourika Valley & Berber villages',
      'Day 4: Majorelle Garden & Yves Saint Laurent museum',
    ],
    accommodation: 'Traditional riad with rooftop terrace in the medina',
  ),
  Trip(
    category: 'Europe',
    name: 'Reykjavik Northern Lights',
    country: 'Iceland',
    image:
        'https://images.unsplash.com/photo-1519058082700-6d30927db022?w=800&fit=crop',
    rating: 4.8,
    reviews: 623,
    description:
        '''Chase aurora borealis, soak in Blue Lagoon, and explore Golden Circle geysers/waterfalls. Black sand beaches, ice caves, and geothermal wonders. Ultimate adventure in fire and ice land.''',
    schedule: [
      'Day 1: Blue Lagoon & Reykjavik city',
      'Day 2: Golden Circle (Geysir, Gullfoss, Thingvellir)',
      'Day 3: South Coast black beaches & Reynisfjara',
      'Day 4: Northern Lights hunt & geothermal bakery',
    ],
    accommodation: 'Cozy geothermal-heated hotel with aurora views',
  ),
  Trip(
    category: 'America',
    name: 'Rio de Janeiro Carnival',
    country: 'Brazil',
    image:
        'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=800&fit=crop',
    rating: 4.5,
    reviews: 2105,
    description:
        '''Christ the Redeemer, Sugarloaf cable car, Copacabana beach parties. Samba schools, Ipanema vibes, and Tijuca rainforest hikes. Infectious rhythm and stunning bay views.''',
    schedule: [
      'Day 1: Christ the Redeemer & Sugarloaf',
      'Day 2: Copacabana & Ipanema beaches',
      'Day 3: Tijuca National Park hike',
      'Day 4: Lapa nightlife & street art tour',
    ],
    accommodation: 'Beachfront pousada in Ipanema',
  ),
];
