import 'package:flutter/material.dart';
import 'package:food_strime_app/future/view/presentation/widget/cusotm_row_button_widget.dart';
import 'package:food_strime_app/future/view/presentation/widget/custom_button.dart';

class UiHomeScreen extends StatefulWidget {
  const UiHomeScreen({super.key});

  @override
  State<UiHomeScreen> createState() => _UiHomeScreenState();
}
class _UiHomeScreenState extends State<UiHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background Color Layer
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.deepPurple.shade500,
            ),
          ),
          // Background Image Layer
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image2.webp'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Foreground Content
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Signup Button
                CustomButton(
                  redus: 13,
                  color: Colors.black,
                  title: 'Sign up with email',
                  onTap: () {},
                  padding: const EdgeInsets.symmetric(vertical: 17),
                ),
                const SizedBox(height: 20),
                // Divider with Text
                const Row(
                  children: [
                    Expanded(child: Divider(color: Colors.white)),
                    SizedBox(width: 11),
                    Text(
                      'or continue with',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 11),
                    Expanded(child: Divider(color: Colors.white)),
                  ],
                ),
                const SizedBox(height: 20),
                // Continue with Google
                CustomRowButton(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  color: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/apple logo.png', height: 25),
                      const SizedBox(width: 10),
                      const Text(
                        'Continue with Google',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 11),
                // Continue with Facebook
                CustomRowButton(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  color: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/facebook logo.png', height: 25),
                      const SizedBox(width: 8),
                      const Text(
                        'Continue with Facebook',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 11),
                // Continue with Apple
                CustomRowButton(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  color: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/google logo.jpg', height: 25),
                      const SizedBox(width: 16),
                      const Text(
                        'Continue with Apple',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                // Already have account? Log In
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigate to Log In screen
                      },
                      child: const Text(
                        ' Log In',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
