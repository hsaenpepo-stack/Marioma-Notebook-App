import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

Future<void> showTryAgainDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (_) => Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset('assets/images/baby_prompt.png', height: 220, fit: BoxFit.cover),
            ),
            const SizedBox(height: 12),
            const Text('لأ، اعملي الإنجاز يا ماما',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900, color: AppColors.text)),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.pinkDeep,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: () => Navigator.pop(context),
                child: const Text('مواصلة الإنجاز'),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Future<void> showSuccessDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (_) => Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset('assets/images/baby_success.png', height: 220, fit: BoxFit.cover),
            ),
            const SizedBox(height: 12),
            const Text('شاطرة يا ماما',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900, color: AppColors.text)),
            const Text('تم إنجاز المهمة بنجاح ⭐', style: TextStyle(fontSize: 15, color: AppColors.text)),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.pinkDeep,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: () => Navigator.pop(context),
                child: const Text('رائع'),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
