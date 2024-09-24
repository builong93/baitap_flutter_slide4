import 'package:flutter/material.dart';
import 'package:my_flutter_app/ui/menu_buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Menu'),
          backgroundColor: Colors.blue.shade400,
        ),
        body: const MenuButtons(),
      ),
    );
  }
}
