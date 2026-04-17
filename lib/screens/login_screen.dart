import 'package:flutter/material.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // المخازن اللي هتشيل الأسامي اللي المستخدم هيكتبها
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
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
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                
                // 1. اللوجو
                Image.asset(
                  'assets/images/logo.png',
                  height: 100, // صغرناه سنة بسيطة عشان يكفي المربعات الجديدة
                ),
                const SizedBox(height: 15),

                // 2. العنوان بتدرج الألوان (Gradient Text)
                ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [
                      Color(0xFF1A237E), 
                      Color(0xFF7E57C2), 
                    ],
                  ).createShader(bounds),
                  child: const Text(
                    'Log into your\nVibe Trip',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, 
                      height: 1.2,
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                // 3. حقل الاسم الأول
                CustomTextField(
                  label: 'First Name',
                  hint: 'Enter first name',
                  icon: Icons.person_outline,
                  controller: firstNameController,
                ),
                const SizedBox(height: 15),

                // 4. حقل الاسم الأخير
                CustomTextField(
                  label: 'Last Name',
                  hint: 'Enter last name',
                  icon: Icons.person_add_alt,
                  controller: lastNameController,
                ),
                const SizedBox(height: 15),

                // 5. حقل الإيميل
                const CustomTextField(
                  label: 'Email Address',
                  hint: 'vibetrip@email.com',
                  icon: Icons.mail_outline,
                ),
                const SizedBox(height: 15),

                // 6. حقل الباسورد
                const CustomTextField(
                  label: 'Password',
                  hint: '••••••••',
                  icon: Icons.lock_outline,
                  isPassword: true,
                ),
                const SizedBox(height: 5),

                // 7. زرار نسيت كلمة المرور
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Color(0xFF2C3E50),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),

                // 8. قسم تسجيل الدخول بالسوشيال ميديا
                const Text(
                  'Or log in with:',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF455A64),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildSocialIcon(Icons.g_mobiledata, Colors.red, isGoogle: true),
                    const SizedBox(width: 20),
                    _buildSocialIcon(Icons.facebook, Colors.blue),
                    const SizedBox(width: 20),
                    _buildSocialIcon(Icons.apple, Colors.black),
                  ],
                ),
                const SizedBox(height: 30),

                // 9. زرار تسجيل الدخول (Log In) وتمرير البيانات
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {
                      // هنا بناخد الكلام اللي اتكتب في المربعات ونبعته للهوم
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            firstName: firstNameController.text,
                            lastName: lastNameController.text,
                          ),
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
                          'Log In',
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
                const SizedBox(height: 20),

                // 10. زرار إنشاء حساب جديد
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account? ",
                      style: TextStyle(color: Color(0xFF455A64)),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Sign up now",
                        style: TextStyle(
                          color: Color(0xFF1A237E),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // دالة أزرار السوشيال ميديا
  Widget _buildSocialIcon(IconData icon, Color color, {bool isGoogle = false}) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Center(
        child: isGoogle 
            ? const Text('G', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red)) 
            : Icon(icon, color: color, size: 30),
      ),
    );
  }
}

// الويدجت المخصصة لمربعات الكتابة (تم إضافة الـ controller فيها)
class CustomTextField extends StatelessWidget {
  final String label;
  final String hint;
  final IconData icon;
  final bool isPassword;
  final TextEditingController? controller; // أضفنا ده عشان نستلم الكلام

  const CustomTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.icon,
    this.isPassword = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end, 
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(0xFF2C3E50),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: TextField(
            controller: controller, // ربطنا المخزن هنا
            obscureText: isPassword, 
            textAlign: TextAlign.right, 
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: const TextStyle(color: Colors.black38),
              suffixIcon: Icon(icon, color: const Color(0xFF7E57C2)), 
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            ),
          ),
        ),
      ],
    );
  }
}