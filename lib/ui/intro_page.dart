import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Trang giới thiệu'),
          backgroundColor: Colors.blue.shade400,
        ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(radius: 100,
            backgroundImage: AssetImage('assets/images/2.jpg'),
            ),
            Text(
              'Bùi Duy Long',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text('Tuổi: 24'),
            Text('Năm sinh: 2000'),
            // Thêm các thông tin khác ở đây
          ],
        ),
      ),
    );
  }
}