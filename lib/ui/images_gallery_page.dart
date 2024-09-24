import 'package:flutter/material.dart';

class ImagesGalleryPage extends StatefulWidget {

  const ImagesGalleryPage({super.key});

  @override
  State<ImagesGalleryPage> createState() => _ImagesGalleryPageState();
}

class _ImagesGalleryPageState extends State<ImagesGalleryPage> {
  final List<String> imagePaths = [
    'assets/images/2.jpg',
    'assets/images/appicon.png',
    'assets/images/a3.png',
    'assets/images/a4.png',
    'assets/images/aaa.png',
    // ... thêm các đường dẫn ảnh khác
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Thư viện ảnh')),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Số lượng hình ảnh trong một hàng
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return Image.asset(imagePaths[index]);
        },
      ),
    );
  }
}