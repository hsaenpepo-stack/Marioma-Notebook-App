import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../home/home_screen.dart';
import '../notebook/notebook_screen.dart';
import '../reminders/reminders_screen.dart';
import '../achievements/achievements_screen.dart';
import '../settings/settings_screen.dart';

class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int index = 0;
  final pages = const [
    HomeScreen(),
    NotebookScreen(),
    RemindersScreen(),
    AchievementsScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (value) => setState(() => index = value),
        backgroundColor: Colors.white,
        indicatorColor: AppColors.pink.withOpacity(.25),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_rounded), label: 'الرئيسية'),
          NavigationDestination(icon: Icon(Icons.menu_book_rounded), label: 'دفتر'),
          NavigationDestination(icon: Icon(Icons.notifications_active_rounded), label: 'تنبيهات'),
          NavigationDestination(icon: Icon(Icons.emoji_events_rounded), label: 'إنجازات'),
          NavigationDestination(icon: Icon(Icons.settings_rounded), label: 'الإعدادات'),
        ],
      ),
    );
  }
}
