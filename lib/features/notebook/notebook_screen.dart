import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../core/widgets/baby_dialogs.dart';
import '../../core/widgets/lined_notebook_paper.dart';

class NotebookScreen extends StatefulWidget {
  const NotebookScreen({super.key});

  @override
  State<NotebookScreen> createState() => _NotebookScreenState();
}

class _NotebookScreenState extends State<NotebookScreen> {
  final List<_TodoItem> items = [
    _TodoItem('إعادة تنظيم البيت', true),
    _TodoItem('مراجعة الأهداف الشهرية', true),
    _TodoItem('البدء في تعلم مهارة جديدة', true),
    _TodoItem('ممارسة الرياضة بانتظام', false),
    _TodoItem('قراءة كتاب مفيد', false),
    _TodoItem('الاهتمام بالوقت مع عائلتي', false),
    _TodoItem('تحضير وجبات صحية', false),
    _TodoItem('شرب الماء يومياً', false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ملاحظة جديدة', style: TextStyle(fontWeight: FontWeight.w900, color: AppColors.text)),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 12),
            child: FilledButton(
              style: FilledButton.styleFrom(backgroundColor: AppColors.pinkDeep),
              onPressed: () => showSuccessDialog(context),
              child: const Text('حفظ'),
            ),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'ابحثي عن أي ملاحظة أو مهمة...',
              prefixIcon: const Icon(Icons.search_rounded),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(22), borderSide: BorderSide.none),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 46,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _chip('الكل', AppColors.pink),
                _chip('شخصي', AppColors.lavender),
                _chip('السوق', AppColors.yellow),
                _chip('المنزل', AppColors.aqua),
                _chip('العمل', const Color(0xFFAFE7FF)),
                _chip('الصحة', const Color(0xFFBEEBCF)),
              ],
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 700,
            child: LinedNotebookPaper(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(22, 20, 22, 20),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 60,
                      child: Opacity(
                        opacity: .09,
                        child: Image.asset('assets/images/marioma_identity.png', height: 220, fit: BoxFit.contain),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('خطة بعد العيد', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900, color: AppColors.text)),
                        const SizedBox(height: 10),
                        ...items.map((e) => CheckboxListTile(
                              contentPadding: EdgeInsets.zero,
                              value: e.done,
                              activeColor: AppColors.pinkDeep,
                              checkboxShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                              title: Text(e.title, style: const TextStyle(fontSize: 21, color: AppColors.text)),
                              onChanged: (v) {
                                setState(() => e.done = v ?? false);
                                if (v == true) {
                                  showSuccessDialog(context);
                                }
                              },
                            )),
                        const Spacer(),
                        const Text('أدوات التنسيق', style: TextStyle(fontWeight: FontWeight.w900, color: AppColors.text)),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _tool(Icons.star_rounded, 'ملصقات'),
                            _tool(Icons.edit_rounded, 'تمييز'),
                            _tool(Icons.text_fields_rounded, 'خط'),
                            _tool(Icons.format_list_bulleted_rounded, 'قوائم'),
                            _tool(Icons.image_outlined, 'صورة'),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 58,
            child: FilledButton.icon(
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.pinkDeep,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
              ),
              onPressed: () => showTryAgainDialog(context),
              icon: const Icon(Icons.sentiment_dissatisfied_rounded),
              label: const Text('مش عامل الإنجاز النهاردة', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),
            ),
          )
        ],
      ),
    );
  }

  Widget _chip(String text, Color color) => Padding(
        padding: const EdgeInsetsDirectional.only(end: 8),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(color: color.withOpacity(.35), borderRadius: BorderRadius.circular(18)),
          alignment: Alignment.center,
          child: Text(text, style: const TextStyle(fontWeight: FontWeight.w800, color: AppColors.text)),
        ),
      );

  Widget _tool(IconData icon, String label) => Column(
        children: [
          CircleAvatar(backgroundColor: AppColors.lavender.withOpacity(.35), child: Icon(icon, color: AppColors.text)),
          const SizedBox(height: 4),
          Text(label, style: const TextStyle(fontSize: 12, color: AppColors.text)),
        ],
      );
}

class _TodoItem {
  final String title;
  bool done;
  _TodoItem(this.title, this.done);
}
