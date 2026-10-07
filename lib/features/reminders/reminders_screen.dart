import 'package:flutter/material.dart';

class RemindersScreen extends StatelessWidget {
  const RemindersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('التذكيرات والإشعارات'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Card(
            child: ListTile(
              leading: Icon(Icons.notifications_active),
              title: Text('موعد الدواء'),
              subtitle: Text('اليوم - 8:00 مساءً'),
              trailing: Switch(value: true, onChanged: null),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.check_circle),
              title: Text('إنجاز المهام اليومية'),
              subtitle: Text('تنبيه متكرر حسب الروتين'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.mosque),
              title: Text('مواقيت الصلاة'),
              subtitle: Text('تنبيهات الصلاة اليومية'),
            ),
          ),
        ],
      ),
    );
  }
}
