import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String image_url;
  final String sub_text;

  const MenuButton({Key? key, required this.image_url, required this.sub_text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
            image_url,
            width: 80,
            height: 100,
            fit: BoxFit.cover),
        SizedBox(
          height: 20,
        ),
        Text(
          sub_text,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
