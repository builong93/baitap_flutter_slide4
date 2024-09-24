import 'package:flutter/material.dart';
import 'package:my_flutter_app/ui/images_gallery_page.dart';
import 'package:my_flutter_app/ui/intro_page.dart';

class MenuButtons extends StatefulWidget {
  const MenuButtons({super.key});

  @override
  State<MenuButtons> createState() => _MenuButtonsState();
}

class _MenuButtonsState extends State<MenuButtons> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              shadowColor: const Color.fromARGB(214, 129, 5, 5),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero))),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const IntroPage()));
          },
          child: const ListTile(
            leading: Icon(Icons.museum_sharp),
            title: Text('Trang giới thiệu'),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              shadowColor: const Color.fromARGB(214, 129, 5, 5),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero))),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ImagesGalleryPage()));
          },
          child: const ListTile(
            leading: Icon(Icons.image),
            title: Text('Hình ảnh'),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              shadowColor: const Color.fromARGB(214, 129, 5, 5),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero))),
          onPressed: () {},
          child: const ListTile(
            leading: Icon(Icons.info),
            title: Text('Thông tin'),
          ),
        ),
      ],
    );
  }
}
