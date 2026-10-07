import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class RemindersScreen extends StatelessWidget {
  const RemindersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('التذكيرات والإشعارات', style: TextStyle(fontWeight: FontWeight.w900, color: AppColors.text))),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              gradient: const LinearGradient(colors: [Color(0xFFFFD6E6), Colors.white]),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('طريقة الإشعارات', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900, color: AppColors.text)),
                SizedBox(height: 8),
                Text('• تنبيه في الوقت المحدد
• نغمة + اهتزاز
• تكرار يومي/أسبوعي
• إشعار حتى لو التطبيق مقفول
• سجل للتذكيرات المنجزة أو الفائتة',
                    style: TextStyle(fontSize: 15, height: 1.6, color: AppColors.text)),
              ],
            ),
          ),
          const SizedBox(height: 16),
          _reminderCard('موعد الدواء', 'اليوم • 8:00 م', AppColors.pink, true),
          _reminderCard('مراجعة المهام اليومية', 'يومياً • 9:30 ص', AppColors.aqua, false),
          _reminderCard('الصلاة', 'تنبيهات حسب المواقيت', AppColors.yellow, true),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(24)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('معاينة شكل الإشعار', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18, color: AppColors.text)),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(color: const Color(0xFFF6F7FB), borderRadius: BorderRadius.circular(18)),
                  child: Row(
                    children: const [
                      CircleAvatar(backgroundColor: AppColors.pink, child: Icon(Icons.notifications_active_rounded, color: Colors.white)),
                      SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('نوت مريومة', style: TextStyle(fontWeight: FontWeight.w800, color: AppColors.text)),
                            SizedBox(height: 4),
                            Text('تذكير: موعد الدواء الساعة 8:00 م 💗', style: TextStyle(color: AppColors.text)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _reminderCard(String title, String time, Color color, bool enabled) => Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(24), boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 4))]),
        child: Row(
          children: [
            CircleAvatar(backgroundColor: color.withOpacity(.32), child: Icon(Icons.alarm_rounded, color: AppColors.text)),
            const SizedBox(width: 12),
            Expanded(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 18, color: AppColors.text)),
                const SizedBox(height: 4),
                Text(time, style: const TextStyle(color: AppColors.text)),
              ]),
            ),
            Switch(value: enabled, onChanged: (_) {})
          ],
        ),
      );
}
