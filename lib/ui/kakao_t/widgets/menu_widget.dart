import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/model/menu.dart';

class MenuWidget extends StatelessWidget {
  final Menu menu;

  const MenuWidget({Key? key, required this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Hero(
              tag: menu.imageUrl,
              child: Image.network(menu.imageUrl,
                  width: 70, height: 60, fit: BoxFit.cover),
            ),
            if (menu.isFavorite) Positioned(
                right: 0, bottom: 5,
                child: Icon(Icons.star_outlined, color: Colors.yellow,)),
            if (!menu.isFavorite) Positioned(
                right: 0, bottom: 5,
                child: Icon(Icons.star_outlined, color: Colors.redAccent,)),
          ],
        ),
        // SizedBox(
        //   height: 20,
        // ),
        Text(
          menu.title,
          style: TextStyle(fontSize: 10),
        ),
      ],
    );
  }
}
