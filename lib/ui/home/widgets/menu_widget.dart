
import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/model/menu.dart';

class MenuWidget extends StatelessWidget {
  final Menu menu;

  const MenuWidget({Key key, this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
            menu.imageUrl,
            width: 70,
            height: 60,
            fit: BoxFit.cover),
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


