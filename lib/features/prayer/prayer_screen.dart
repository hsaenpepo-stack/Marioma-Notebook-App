import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class PrayerScreen extends StatelessWidget {
  const PrayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final prayers = [
      ['الفجر', '4:43 ص'],
      ['الظهر', '11:44 ص'],
      ['العصر', '3:13 م'],
      ['المغرب', '5:37 م'],
      ['العشاء', '6:56 م'],
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('مواقيت الصلاة', style: TextStyle(fontWeight: FontWeight.w900, color: AppColors.text))),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(26)),
            child: const Text('القاهرة • مناسب للإشعارات اليومية
رمضان • العيد • الحج • المناسبات الإسلامية',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800, color: AppColors.text)),
          ),
          const SizedBox(height: 16),
          ...prayers.map((e) => Container(
                margin: const EdgeInsets.only(bottom: 12),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(22)),
                child: Row(
                  children: [
                    const CircleAvatar(backgroundColor: AppColors.aqua, child: Icon(Icons.access_time_rounded, color: Colors.white)),
                    const SizedBox(width: 12),
                    Expanded(child: Text(e[0], style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 18, color: AppColors.text))),
                    Text(e[1], style: const TextStyle(fontWeight: FontWeight.w800, color: AppColors.text)),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
