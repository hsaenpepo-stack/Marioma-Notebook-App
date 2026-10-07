import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../core/widgets/soft_3d_card.dart';
import '../notebook/notebook_screen.dart';
import '../reminders/reminders_screen.dart';
import '../achievements/achievements_screen.dart';
import '../prayer/prayer_screen.dart';
import '../resources/resources_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [Colors.white, Color(0xFFF6FFFD)]),
              borderRadius: BorderRadius.circular(26),
              boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 14, offset: Offset(0, 6))],
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset('assets/images/marioma_identity.png', width: 68, height: 68, fit: BoxFit.cover),
                ),
                const SizedBox(width: 12),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('مرحباً مريومة 💖', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900, color: AppColors.text)),
                      SizedBox(height: 4),
                      Text('صباح الخير ☀️ • اليوم يوم إنجاز جديد', style: TextStyle(fontSize: 14, color: AppColors.text)),
                    ],
                  ),
                ),
                CircleAvatar(
                  backgroundColor: AppColors.lavender.withOpacity(.5),
                  child: const Icon(Icons.notifications_none_rounded, color: AppColors.text),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.9),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text('التنظيم اليوم ... يصنع لك غداً أجمل 💗', textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w700, color: AppColors.text)),
          ),
          const SizedBox(height: 16),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 14,
            mainAxisSpacing: 14,
            childAspectRatio: 1.05,
            children: [
              Soft3DCard(title: 'الملاحظات', icon: Icons.menu_book_rounded, color: AppColors.pink, onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const NotebookScreen()))),
              Soft3DCard(title: 'المهام', icon: Icons.fact_check_rounded, color: AppColors.lavender),
              Soft3DCard(title: 'التذكيرات', icon: Icons.notifications_active_rounded, color: AppColors.yellow, onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const RemindersScreen()))),
              Soft3DCard(title: 'الإنجازات', icon: Icons.emoji_events_rounded, color: AppColors.aqua, onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const AchievementsScreen()))),
              Soft3DCard(title: 'التقويم', icon: Icons.calendar_month_rounded, color: const Color(0xFFAFE7FF)),
              Soft3DCard(title: 'الحاسبة', icon: Icons.calculate_rounded, color: const Color(0xFFF9D87E)),
              Soft3DCard(title: 'الصلاة', icon: Icons.mosque_rounded, color: const Color(0xFFBCEFD7), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const PrayerScreen()))),
              Soft3DCard(title: 'المرأة والأطفال', icon: Icons.favorite_rounded, color: const Color(0xFFFFD7E6), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ResourcesScreen()))),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(24)),
            padding: const EdgeInsets.all(16),
            child: Row(
              children: const [
                Icon(Icons.star_rounded, color: AppColors.yellow, size: 34),
                SizedBox(width: 10),
                Expanded(child: Text('إنجازات اليوم: 5 مهام مكتملة • 3 تذكيرات نشطة • 12 نجمة هذا الأسبوع', style: TextStyle(fontWeight: FontWeight.w700, color: AppColors.text))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
