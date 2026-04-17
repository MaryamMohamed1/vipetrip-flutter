import 'package:flutter/material.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFE1F5FE),
              Color(0xFFF3E5F5),
              Color(0xFFFFF3E0),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: 1),
              duration: const Duration(milliseconds: 1200),
              curve: Curves.easeOutCubic,
              builder: (context, double value, child) {
                return Opacity(
                  opacity: value,
                  child: Transform.translate(
                    offset: Offset(0, 30 * (1 - value)),
                    child: child,
                  ),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        height: 180, 
                      ),
                      const SizedBox(height: 10), 
                      const Text(
                        'Welcome to VibeTrip',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF2C3E50),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "What's your\nvibe today?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                          color: Color(0xFF1A237E),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        'Discover your next great outing',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF455A64),
                        ),
                      ),
                    ],
                  ),
                  const Column(
                    children: [
                      FeatureItem(
                        icon: Icons.location_on_outlined,
                        text: 'Find places by mood',
                      ),
                      SizedBox(height: 15),
                      FeatureItem(
                        icon: Icons.credit_card_outlined,
                        text: 'Set your budget',
                      ),
                      SizedBox(height: 15),
                      FeatureItem(
                        icon: Icons.bar_chart_rounded,
                        text: 'Get personalized suggestions',
                      ),
                    ],
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(30),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: Ink(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFF5C6BC0),
                              Color(0xFFFF7043),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            'Start Your VibeTrip',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FeatureItem extends StatelessWidget {
  final IconData icon;
  final String text;
  const FeatureItem({super.key, required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: const Color(0xFF7E57C2), size: 28),
        const SizedBox(width: 15),
        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xFF37474F),
          ),
        ),
      ],
    );
  }
}