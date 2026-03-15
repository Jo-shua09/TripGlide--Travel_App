import 'package:flutter/material.dart';
import 'package:travel_app/features/auth/widgets/text_field_widget.dart';
import 'package:get/get.dart';
import 'package:travel_app/features/auth/view/log_in_screen.dart';
import 'package:travel_app/features/home/view/home_screen.dart';
import 'package:travel_app/main_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Text(
              'Get Started!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 26,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Sign up to start your journey.',
              maxLines: 2,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                  child: const TextFieldWidget(
                    hintText: 'First name',
                    prefixIcon: Icons.person_outline,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: const TextFieldWidget(
                    hintText: 'Last name',
                    prefixIcon: Icons.person_outline,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const TextFieldWidget(
              hintText: 'Email Address',
              prefixIcon: Icons.email_outlined,
            ),
            const SizedBox(height: 16),
            const TextFieldWidget(
              hintText: 'Password',
              prefixIcon: Icons.lock_outline,
              isPassword: true,
            ),
            const SizedBox(height: 16),
            const TextFieldWidget(
              hintText: 'Confirm Password',
              prefixIcon: Icons.lock_outline,
              isPassword: true,
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Text('Already have an account?'),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () => Get.off(() => const LogInScreen()),
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const MainScreen()),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
