
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(flex: 3),

            // Logo vi tien
            SizedBox(
              width: 150,
              height: 120,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 0,
                    left: 48,
                    child: Container(
                      width: 70,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.green.shade300,
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 12,
                    left: 40,
                    child: Container(
                      width: 80,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.green.shade600,
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    child: Container(
                      width: 115,
                      height: 70,
                      decoration: BoxDecoration(
                        color: const Color(0xFF1976D2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 28,
                    child: Container(
                      width: 43,
                      height: 28,
                      decoration: BoxDecoration(
                        color: const Color(0xFF0D47A1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: CircleAvatar(
                          radius: 6,
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Expense Manager',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF14243D),
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              'Quản lý chi tiêu cá nhân\nđơn giản và hiệu quả',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                height: 1.5,
                color: Color(0xFF8291A8),
              ),
            ),

            const Spacer(flex: 4),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1976D2),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Bắt đầu',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
