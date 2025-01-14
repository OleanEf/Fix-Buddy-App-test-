import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('โปรไฟล์ของฉัน'),
      ),
      body: Center(
        child: const Text(
          'นี่คือหน้าข้อมูลโปรไฟล์',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
