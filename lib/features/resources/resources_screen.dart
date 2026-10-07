import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class ResourcesScreen extends StatelessWidget {
  const ResourcesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('المرأة والأطفال', style: TextStyle(fontWeight: FontWeight.w900, color: AppColors.text))),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          _InfoCard(
            title: 'خصوصية المرأة',
            color: AppColors.pink,
            items: [
              'تنظيم اليوم والمهام الشخصية',
              'الاهتمام بالصحة العامة والراحة',
              'مساحة لطيفة للكتابة والتفريغ',
            ],
          ),
          SizedBox(height: 12),
          _InfoCard(
            title: 'نصائح للأطفال',
            color: AppColors.aqua,
            items: [
              'روتين النوم والتغذية',
              'ملاحظات التطور اليومي',
              'أفكار بسيطة للرعاية واللعب',
            ],
          ),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final String title;
  final List<String> items;
  final Color color;
  const _InfoCard({required this.title, required this.items, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            CircleAvatar(backgroundColor: color.withOpacity(.35), child: const Icon(Icons.favorite_rounded, color: AppColors.text)),
            const SizedBox(width: 10),
            Text(title, style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 20, color: AppColors.text)),
          ]),
          const SizedBox(height: 12),
          ...items.map((item) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text('• $item', style: const TextStyle(fontSize: 16, color: AppColors.text)),
              )),
        ],
      ),
    );
  }
}
