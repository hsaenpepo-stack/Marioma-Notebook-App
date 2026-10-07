import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class LinedNotebookPaper extends StatelessWidget {
  final Widget child;
  const LinedNotebookPaper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cream,
        borderRadius: BorderRadius.circular(28),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 18, offset: Offset(0, 8)),
        ],
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(28),
              child: CustomPaint(painter: _LinedPainter()),
            ),
          ),
          Positioned.fill(child: child),
        ],
      ),
    );
  }
}

class _LinedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final line = Paint()
      ..color = AppColors.text.withOpacity(.08)
      ..strokeWidth = 1;
    for (double y = 70; y < size.height; y += 36) {
      canvas.drawLine(Offset(16, y), Offset(size.width - 16, y), line);
    }
    final margin = Paint()
      ..color = AppColors.pink.withOpacity(.12)
      ..strokeWidth = 2;
    canvas.drawLine(const Offset(34, 0), Offset(34, size.height), margin);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
