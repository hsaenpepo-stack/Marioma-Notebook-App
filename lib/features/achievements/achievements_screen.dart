import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class AchievementsScreen extends StatelessWidget {
  const AchievementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الإنجازات والنجوم', style: TextStyle(fontWeight: FontWeight.w900, color: AppColors.text))),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [Colors.white, Color(0xFFFDF6FF)]),
              borderRadius: BorderRadius.circular(26),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset('assets/images/ui_direction.png', fit: BoxFit.cover),
                ),
                const SizedBox(height: 14),
                const Text('صورة الأم والطفل في مسار الإنجاز', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22, color: AppColors.text)),
                const SizedBox(height: 8),
                const Text('كل ما تنجزي مهمة، التطبيق يكافئك برسالة لطيفة ونجوم وسجل أسبوعي وشهري.', textAlign: TextAlign.center, style: TextStyle(color: AppColors.text)),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: const [
              Expanded(child: _StatCard(title: 'نجوم اليوم', value: '8 ⭐', color: AppColors.yellow)),
              SizedBox(width: 12),
              Expanded(child: _StatCard(title: 'هذا الأسبوع', value: '31 ⭐', color: AppColors.aqua)),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: const [
              Expanded(child: _StatCard(title: 'هذا الشهر', value: '96 ⭐', color: AppColors.pink)),
              SizedBox(width: 12),
              Expanded(child: _StatCard(title: 'المستوى', value: 'ذهبي', color: AppColors.lavender)),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(24)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('آخر تفاعل', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20, color: AppColors.text)),
                const SizedBox(height: 12),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Image.asset('assets/images/baby_success.png', width: 120, height: 120, fit: BoxFit.cover),
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Text('شاطرة يا ماما
تم إنجاز المهمة بنجاح
+1 نجمة', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: AppColors.text)),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final Color color;
  const _StatCard({required this.title, required this.value, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [BoxShadow(color: color.withOpacity(.25), blurRadius: 12, offset: const Offset(0, 6))],
      ),
      child: Column(
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.w800, color: AppColors.text)),
          const SizedBox(height: 8),
          Text(value, style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 24, color: AppColors.text)),
        ],
      ),
    );
  }
}
