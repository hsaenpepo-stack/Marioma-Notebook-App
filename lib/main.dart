import 'package:flutter/material.dart';
import 'features/splash/splash_screen.dart';

void main() {
  runApp(const MariomaNotebookApp());
}

class MariomaNotebookApp extends StatelessWidget {
  const MariomaNotebookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'نوت مريومة',
      locale: const Locale('ar'),
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'sans',
      ),
      home: const SplashScreen(),
    );
  }
}
