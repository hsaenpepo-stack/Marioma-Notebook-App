import 'dart:async';
import 'package:flutter/material.dart';
import '../shell/main_shell.dart';
import '../../core/theme/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      if (mounted) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const MainShell()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.mint, Color(0xFFAEEDE7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
                  boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 25, offset: Offset(0, 12))],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(36),
                  child: Image.asset('assets/images/marioma_identity.png', width: 220, height: 220, fit: BoxFit.cover),
                ),
              ),
              const SizedBox(height: 20),
              const Text('نوت مريومة', style: TextStyle(fontSize: 34, fontWeight: FontWeight.w900, color: AppColors.text)),
              const SizedBox(height: 8),
              const Text('دفترك اللطيف لتنظيم الحياة اليومية', style: TextStyle(fontSize: 16, color: AppColors.text)),
            ],
          ),
        ),
      ),
    );
  }
}
