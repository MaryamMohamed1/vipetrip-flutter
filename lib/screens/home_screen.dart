import 'package:flutter/material.dart';
import 'explore_screen.dart';

class HomeScreen extends StatefulWidget {
  final String firstName;
  final String lastName;
  const HomeScreen({
    super.key, 
    required this.firstName, 
    required this.lastName,
  });
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  String? selectedMode;
  String? selectedBudget;
    final List<String> modes = [
    'Relax mode',
    'Work & Study mode',
    'Adventure mode',
    'Nostalgic mode',
    'Fun mode',
    'Social mode'
  ];
    final List<String> budgets = [
    '0 - 250 EGP',
    '250 - 400 EGP',
    '400 - 800 EGP',
    '800+ EGP'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFE1F5FE), 
              Color(0xFFFFF3E0),
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.6),
                          shape: BoxShape.circle,
                        ),
                        child: Stack(
                          children: [
                            const Icon(Icons.notifications_outlined, color: Color(0xFF1A237E)),
                            Positioned(
                              right: 0,
                              top: 0,
                              child: Container(
                                width: 8,
                                height: 8,
                                decoration: const BoxDecoration(
                                  color: Colors.redAccent,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ShaderMask(
                        shaderCallback: (bounds) => const LinearGradient(
                          colors: [Color(0xFF1A237E), Color(0xFFFF7043)],
                        ).createShader(bounds),
                        child: const Text(
                          'VibeTrip',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 5,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: const CircleAvatar(
                          backgroundColor: Colors.white, 
                          radius: 20,
                          child: Icon(
                            Icons.person,
                            color: Colors.grey, 
                            size: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 35),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, ${widget.firstName} ${widget.lastName} 👋',
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1A237E),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Let's find the perfect spot for your mood today.",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF455A64),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.85),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white, width: 2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: _buildDropdown(
                                hint: 'Select mode',
                                icon: Icons.emoji_emotions_outlined,
                                value: selectedMode,
                                items: modes,
                                onChanged: (val) {
                                  setState(() {
                                    selectedMode = val;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: _buildDropdown(
                                hint: 'Select Budget',
                                icon: Icons.payments_outlined,
                                value: selectedBudget,
                                items: budgets,
                                onChanged: (val) {
                                  setState(() {
                                    selectedBudget = val;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          width: double.infinity,
                          height: 45,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ExploreScreen(
                                    selectedMode: selectedMode,
                                    selectedBudget: selectedBudget,
                                  ),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF5C6BC0),
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            icon: const Icon(Icons.search),
                            label: const Text('Search Vibes', style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 35),                
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Featured Outing',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2C3E50),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 260,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    children: const [
                      PlaceCard(
                        imageUrl: 'assets/images/city center almaza.png', 
                        title: 'City Center Almaza',
                        rating: '4.8',
                        icon: '🛍️',
                        cost: 'FREE',
                        location: 'Heliopolis, Cairo',
                        description: 'A premium shopping and entertainment destination offering a wide variety of stores, cafes, and an amazing cinema experience.',
                      ),
                      PlaceCard(
                        imageUrl: 'assets/images/gero land.png',
                        title: 'Gero Land',
                        rating: '4.5',
                        icon: '🎢',
                        cost: '220EGP',
                        location: 'Obour City, Cairo',
                        description: 'An exciting amusement park featuring thrilling rides, fun activities, and an unforgettable vibe for family and friends.',
                      ),
                      PlaceCard(
                        imageUrl: 'assets/images/groppi.png', 
                        title: 'Groppi',
                        rating: '4.8',
                        icon: '☕',
                        cost: '150-300EGP',
                        location:'Talaat Harb & Korba,Cairo',
                        description: 'A historic and elegant café famous for its classical ambiance, delicious pastries, and rich history dating back to the early 20th century.',
                      ),
                       PlaceCard(
                        imageUrl: 'assets/images/misr puplic library.png', 
                        title: 'Misr Public Library',
                        rating: '4.3',
                        icon: '📚',
                        cost: 'FREE',
                        location: 'Dokki, Giza',
                        description: 'A quiet and resourceful public library perfect for studying, reading, and working in a peaceful environment.',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF5C6BC0),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined), label: 'Bookings'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }
  Widget _buildDropdown({
    required String hint,
    required IconData icon,
    required String? value,
    required List<String> items,
    required Function(String?) onChanged,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          icon: const Icon(Icons.keyboard_arrow_down, size: 20),
          hint: Row(
            children: [
              Icon(icon, size: 16, color: Colors.grey.shade700),
              const SizedBox(width: 5),
              Expanded(
                child: Text(
                  hint,
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          value: value,
          items: items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item, style: const TextStyle(fontSize: 12)),
            );
          }).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}

class PlaceCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String rating;
  final String icon;
  final String cost;
  final String description; 
  final String location; 
  const PlaceCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.icon,
    required this.cost,
    required this.description,
    required this.location,
  });
  void _showPlaceDetails(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, 
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.65, 
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
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                child: Image.asset(
                  imageUrl,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
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
                              title,
                              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF1A237E)),
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(Icons.star, color: Colors.amber, size: 22),
                              const SizedBox(width: 4),
                              Text(rating, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Icon(Icons.location_on, color: Color(0xFF5C6BC0), size: 20),
                          const SizedBox(width: 5),
                          Text(location, style: const TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w500)),
                        ],
                      ),
                      const SizedBox(height: 25),
                      const Text(
                        'About this Vibe',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF2C3E50)),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        description,
                        style: const TextStyle(fontSize: 15, color: Colors.black87, height: 1.5),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: const EdgeInsets.symmetric(horizontal: 5),
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
                  height: 140,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 14),
                      const SizedBox(width: 4),
                      Text(rating, style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(icon, style: const TextStyle(fontSize: 16)),
                    Text(cost, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
                  ],
                ),
                const SizedBox(height: 10),                
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(15),
                    onTap: () => _showPlaceDetails(context), 
                    child: Ink(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: const LinearGradient(
                          colors: [Color(0xFF5C6BC0), Color(0xFFFF7043)],
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'View Vibe',
                          style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}