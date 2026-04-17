import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  final String? selectedMode;
  final String? selectedBudget;
  const ExploreScreen({super.key, this.selectedMode, this.selectedBudget});
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> allPlaces = [
      {
        'title': 'Al-Azhar Park',
        'imageUrl': 'assets/images/alzahar-garden.png',
        'rating': '4.7',
        'icon': '🌳🌴',
        'cost': '150 EGP',
        'location': 'Salah Salem St, El-Darb El-Ahmar, Cairo',
        'description': 'Al-Azhar Park is a public park in Cairo, Egypt. Established in 2005, it is located in qism al-Darb al-Ahmar, in Historic Cairo. Among several honors, this park is listed as one of the world\'s sixty great public spaces.',
        'mode': 'Relax mode',
        'budget': '0 - 250 EGP',
        'extraImages': [
          'assets/images/alzahar1.png', 
          'assets/images/alzahar2.png', 
          'assets/images/alzahar3.png',
          'assets/images/alzahar-garden.png'
        ],
      },
      {
        'title': 'EUGÉNIE CAFE',
        'imageUrl': 'assets/images/eugene1.png',
        'rating': '4.5',
        'icon': '☕',
        'cost': '45-150',
        'location': '19 Meret Basha Ismailia Qasr El Nile, Cairo',
        'description': 'If you\'re looking for a new downtown café that combines a classic ambiance with a modern touch, then Eugenie offers a unique experience for coffee and dessert lovers.',
        'mode': 'Relax mode', 
        'budget': '0 - 250 EGP',
        'extraImages': [
          'assets/images/eugene.png', 
          'assets/images/eugene2.png', 
          'assets/images/eugene3.png',
          'assets/images/eugene1.png'
        ],
      },
      {
        'title': 'Groppi',
        'imageUrl': 'assets/images/groppi.png',
        'rating': '4.8',
        'icon': '☕',
        'cost': '150-300 EGP',
        'location': 'Downtown, Cairo',
        'description': 'A historic and elegant café famous for its classical ambiance, delicious pastries, and rich history dating back to the early 20th century.',
        'mode': 'Relax mode',
        'budget': '0 - 250 EGP',
        'extraImages': [
          'assets/images/groppi.png', 
          'assets/images/groppi.png', 
          'assets/images/groppi.png',
          'assets/images/groppi.png'
        ],
      },
      {
        'title': 'Square One Strip Mall',
        'imageUrl': 'assets/images/square.png',
        'rating': '4.3',
        'icon': '☕',
        'cost': 'FREE',
        'location': '6th of October, Gamal Abdel Nasser Axis, Giza',
        'description': 'It has everything. Various restaurants, and eastern, western, Asian and international cafes, and each place has indoor and outdoor seating.',
        'mode': 'Relax mode',
        'budget': '0 - 250 EGP',
        'extraImages': [
          'assets/images/square1.png', 
          'assets/images/square2.png', 
          'assets/images/square3.png',
          'assets/images/square.png'
        ],
      },
      {
        'title': 'Misr Public Library',
        'imageUrl': 'assets/images/misr1.png',
        'rating': '4.3',
        'icon': '📚',
        'cost': 'FREE',
        'location': '4 Al Tahawia, Dokki, Giza',
        'description': 'A quiet and resourceful public library perfect for studying, reading, and working in a peaceful environment.',
        'mode': 'Work & Study mode', 
        'budget': '0 - 250 EGP',
        'extraImages': [
          'assets/images/misr puplic library.png', 
          'assets/images/misr2.png', 
          'assets/images/misr3.png',
          'assets/images/misr1.png'
        ],
      },
      {
        'title': 'Elsawy Culture Wheel',
        'imageUrl': 'assets/images/elsawy.png',
        'rating': '4.5',
        'icon': '☕',
        'cost': '35 EGP',
        'location': '26th of July street, Zamalek, Cairo',
        'description': 'El Sawy Culture Wheel is a cultural center on Gezira Island. It is considered one of the most important cultural venues in Egypt.',
        'mode': 'Relax mode', 
        'budget': '0 - 250 EGP',
        'extraImages': [
          'assets/images/elsawy1.png', 
          'assets/images/elsawt2.png', 
          'assets/images/elsawy3.png',
          'assets/images/elsawy.png'
        ],
      },
      {
        'title': 'City Center Almaza',
        'imageUrl': 'assets/images/city center almaza.png',
        'rating': '4.8',
        'icon': '🛍️',
        'cost': 'FREE',
        'location': 'Heliopolis, Cairo',
        'description': 'A premium shopping and entertainment destination offering a wide variety of stores, cafes, and an amazing cinema experience.',
        'mode': 'Fun mode',
        'budget': '0 - 250 EGP', 
        'extraImages': [
          'assets/images/city center almaza.png', 
          'assets/images/citycenter1.png',
          'assets/images/citycenter2.png',
          'assets/images/citycenter3.png'
        ],
      },
      {
        'title': 'Gero Land',
        'imageUrl': 'assets/images/gero1.png',
        'rating': '4.5',
        'icon': '🎢',
        'cost': '220 EGP',
        'location': 'Obour City, Cairo',
        'description': 'An exciting amusement park featuring thrilling rides, fun activities, and an unforgettable vibe for family and friends.',
        'mode': 'Adventure mode',
        'budget': '250 - 400 EGP',
        'extraImages': [
          'assets/images/gero land.png', 
          'assets/images/gero1.png', 
          'assets/images/gero2.png',
          'assets/images/gero3.png'
        ],
      },
      {
        'title': 'Dream Park',
        'imageUrl': 'assets/images/adventuremode/dreampark.png',
        'rating': '4.3',
        'icon': '🎢',
        'cost': '140 EGP',
        'location': '6th October Wahat Road, Giza',
        'description': 'Dream Park is an amusement park with an area of 150 acres, its one of the largest amusement parks in the Middle East.',
        'mode': 'Adventure mode',
        'budget': '0 - 250 EGP',
        'extraImages': [
          'assets/images/adventuremode/dreampark.png', 
          'assets/images/adventuremode/dreampark1.png', 
          'assets/images/adventuremode/dreampark2.png',
          'assets/images/adventuremode/dreampark3.png'
        ],
      },
      {
        'title': 'Decode Escape Room',
        'imageUrl': 'assets/images/adventuremode/decode.png',
        'rating': '4.8',
        'icon': '🎢',
        'cost': '250 EGP',
        'location': '24 Kambez, Dokki',
        'description': 'Every room is 100% designed and created by our team, crafted to pull you into dark, immersive stories.',
        'mode': 'Adventure mode',
        'budget': '0 - 250 EGP',
        'extraImages': [
          'assets/images/adventuremode/decode.png', 
          'assets/images/adventuremode/decode1.png', 
          'assets/images/adventuremode/decode2.png',
          'assets/images/adventuremode/decode3.png'
        ],
      },
      {
        'title': 'Mario high ropes',
        'imageUrl': 'assets/images/adventuremode/zipline.png',
        'rating': '4.4',
        'icon': '🧗🏻‍♀️',
        'cost': '220 EGP',
        'location': 'Al Abageyah, Manshiyat Naser, Cairo',
        'description': 'Begin your journey with a visit to the stunning Cave Church of Saint Simon, carved entirely into the Mokattam Mountain.',
        'mode': 'Adventure mode',
        'budget': '0 - 250 EGP',
        'extraImages': [
          'assets/images/adventuremode/zipline1.png', 
          'assets/images/adventuremode/zipline2.png', 
          'assets/images/adventuremode/zipline3.png',
          'assets/images/adventuremode/zipline.png'
        ],
      },
      {
        'title': 'Al-Muizz Street',
        'imageUrl': 'assets/images/nostalgicmode/almuzz.png',
        'rating': '4.8',
        'icon': '🏛️',
        'cost': 'FREE',
        'location': 'Gamaleya district, Cairo',
        'description': 'Al-Muizz Street is a major north-to-south street in the walled city of historic Cairo, Egypt.',
        'mode': 'Nostalgic mode',
        'budget': '0 - 250 EGP',
        'extraImages': [
          'assets/images/nostalgicmode/almuzz.png', 
          'assets/images/nostalgicmode/almuzz1.png', 
          'assets/images/nostalgicmode/almuzz2.png',
          'assets/images/nostalgicmode/almuzz3.png'
        ],
      },
      {
        'title': 'The Grand Egyptian Museum',
        'imageUrl': 'assets/images/nostalgicmode/grandmuseum.png',
        'rating': '4.8',
        'icon': '🏛️',
        'cost': '200',
        'location': 'Alexandria Desert Rd, Giza',
        'description': 'The GEM is a world-class cultural landmark located near the Giza Pyramids, the largest archaeological museum in the world.',
        'mode': 'Nostalgic mode',
        'budget': '0 - 250 EGP',
        'extraImages': [
          'assets/images/nostalgicmode/grandmuseum.png', 
          'assets/images/nostalgicmode/grandmuseum1.png', 
          'assets/images/nostalgicmode/grandmuseum2.png',
          'assets/images/nostalgicmode/grandmuseum3.png'
        ],
      },
      {
        'title': 'Saladin Citadel',
        'imageUrl': 'assets/images/nostalgicmode/citadel.png',
        'rating': '4.6',
        'icon': '🏛️',
        'cost': '30-60',
        'location': 'Al Abageyah, El Khalifa, Cairo',
        'description': 'The Citadel of Cairo is a medieval Islamic-era fortification in Cairo, Egypt. Its construction was begun by Salah ad-Din.',
        'mode': 'Nostalgic mode',
        'budget': '0 - 250 EGP',
        'extraImages': [
          'assets/images/nostalgicmode/citadel.png', 
          'assets/images/nostalgicmode/citadel1.png', 
          'assets/images/nostalgicmode/citadel2.png', // اتصلحت من aassets لـ assets
          'assets/images/nostalgicmode/citadel3.png'
        ],
      },
    ];
    
    List<Map<String, dynamic>> filteredPlaces = allPlaces.where((place) {
      bool matchesMode = (selectedMode == null || selectedMode == 'Select mode' || place['mode'] == selectedMode);
      bool matchesBudget = (selectedBudget == null || selectedBudget == 'Select Budget' || place['budget'] == selectedBudget);
      return matchesMode && matchesBudget;
    }).toList();
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFE1F5FE), Color(0xFFFFF3E0)],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 10),
              ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [Color(0xFF1A237E), Color(0xFFFF7043)],
                ).createShader(bounds),
                child: const Text(
                  'VibeTrip',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, 5)),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 14,
                            backgroundColor: Color(0xFF7E57C2),
                            child: Icon(Icons.nightlight_round, size: 16, color: Colors.white),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Refined by\n${selectedMode ?? "Any Mode"}',
                              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFF1A237E)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(width: 1, height: 30, color: Colors.grey.shade300),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.grey,
                            child: Text('\$', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              '${selectedBudget ?? "Any Budget"}\nBudget',
                              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFF1A237E)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: filteredPlaces.isEmpty
                    ? const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.search_off_rounded, size: 80, color: Colors.grey),
                            SizedBox(height: 15),
                            Text(
                              'No vibes found for this filter.\nTry exploring something else!',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18, color: Colors.grey, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      )
                    : GridView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, 
                          childAspectRatio: 0.65, 
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 15,
                        ),
                        itemCount: filteredPlaces.length,
                        itemBuilder: (context, index) {
                          final place = filteredPlaces[index];
                          return ExplorePlaceCard(
                            imageUrl: place['imageUrl'],
                            title: place['title'],
                            rating: place['rating'],
                            icon: place['icon'],
                            cost: place['cost'],
                            location: place['location'],
                            description: place['description'],
                            extraImages: place['extraImages'],
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 1, 
        selectedItemColor: const Color(0xFF5C6BC0),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined), label: 'Bookings'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.pop(context);
          }
        },
      ),
    );
  }
}
// 🌟 الويدجت التفاعلي المخصص لمحتوى الـ BottomSheet (بدون أي ليمت للصور) 🌟
class PlaceDetailsBottomSheet extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String rating;
  final String location;
  final String description;
  final List<String> extraImages;

  const PlaceDetailsBottomSheet({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.location,
    required this.description,
    required this.extraImages,
  });

  @override
  State<PlaceDetailsBottomSheet> createState() => _PlaceDetailsBottomSheetState();
}

class _PlaceDetailsBottomSheetState extends State<PlaceDetailsBottomSheet> {
  late String _currentMainImage;

  @override
  void initState() {
    super.initState();
    _currentMainImage = widget.imageUrl;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.85, 
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 15, bottom: 10),
              width: 50,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          // الصورة الرئيسية
          Image.asset(
            _currentMainImage,
            height: 220,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          widget.title,
                          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF1A237E)),
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 22),
                          const SizedBox(width: 4),
                          Text(widget.rating, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(Icons.location_on, color: Color(0xFF5C6BC0), size: 20),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          widget.location, 
                          style: const TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w500),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  
                  // 🌟 الجاليري المصغر (ListView يقبل أي عدد من الصور) 🌟
                  SizedBox(
                    height: 80, // ارتفاع شريط الصور
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal, // سحب بالعرض
                      itemCount: widget.extraImages.length, // بيشوف عندك كام صورة ويرسم على أساسهم
                      itemBuilder: (context, index) {
                        final img = widget.extraImages[index];
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              _currentMainImage = img;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 12), // مسافة بين كل صورة والتانية
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: _currentMainImage == img ? const Color(0xFF5C6BC0) : Colors.transparent,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                img,
                                width: 90, 
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 25),

                  const Text(
                    'About this Vibe',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF2C3E50)),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.description,
                    style: const TextStyle(fontSize: 15, color: Colors.black87, height: 1.5),
                  ),
                  const SizedBox(height: 30),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Proceeding to book ${widget.title}...'),
                            backgroundColor: const Color(0xFF5C6BC0),
                            behavior: SnackBarBehavior.floating,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          ),
                        );
                      },
                      child: Ink(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                            colors: [Color(0xFF5C6BC0), Color(0xFFFF7043)],
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Book Now',
                            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class ExplorePlaceCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String rating;
  final String icon;
  final String cost;
  final String location;
  final String description;
  final List<String> extraImages;
  const ExplorePlaceCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.icon,
    required this.cost,
    required this.location,
    required this.description,
    required this.extraImages,
  });
  void _showDetailedVibe(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return PlaceDetailsBottomSheet(
          imageUrl: imageUrl,
          title: title,
          rating: rating,
          location: location,
          description: description,
          extraImages: extraImages,
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, 5)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                child: Image.asset(
                  imageUrl,
                  height: 120, 
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 12),
                      const SizedBox(width: 2),
                      Text(rating, style: const TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(icon, style: const TextStyle(fontSize: 14)),
                      Text(cost, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 12)),
                    ],
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(12),
                      onTap: () => _showDetailedVibe(context), 
                      child: Ink(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: const LinearGradient(
                            colors: [Color(0xFF5C6BC0), Color(0xFFFF7043)],
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'View Vibe',
                            style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}