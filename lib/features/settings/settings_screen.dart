import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themes = [
      ['Pink Soft', AppColors.pink],
      ['Mint Fresh', AppColors.aqua],
      ['Lavender', AppColors.lavender],
      ['Sunny', AppColors.yellow],
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('الإعدادات', style: TextStyle(fontWeight: FontWeight.w900, color: AppColors.text))),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(24)),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text('الثيمات والألوان', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22, color: AppColors.text)),
              const SizedBox(height: 12),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: themes.map((e) => Container(
                  width: 150,
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: (e[1] as Color).withOpacity(.35),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(backgroundColor: e[1] as Color, radius: 20),
                      const SizedBox(height: 8),
                      Text(e[0] as String, style: const TextStyle(fontWeight: FontWeight.w800, color: AppColors.text)),
                    ],
                  ),
                )).toList(),
              )
            ]),
          ),
          const SizedBox(height: 16),
          _item('إدارة الخطوط', Icons.text_fields_rounded),
          _item('Backup / Restore', Icons.backup_rounded),
          _item('قفل التطبيق', Icons.lock_rounded),
          _item('إدارة الإشعارات', Icons.notifications_active_rounded),
        ],
      ),
    );
  }

  Widget _item(String title, IconData icon) => Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(22)),
        child: Row(
          children: [
            CircleAvatar(backgroundColor: AppColors.lavender.withOpacity(.35), child: Icon(icon, color: AppColors.text)),
            const SizedBox(width: 12),
            Expanded(child: Text(title, style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 18, color: AppColors.text))),
            const Icon(Icons.arrow_forward_ios_rounded, size: 18, color: AppColors.text),
          ],
        ),
      );
}
