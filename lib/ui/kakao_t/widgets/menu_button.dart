import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String imageUrl;
  final String subText;

  const MenuButton({Key? key, required this.imageUrl, required this.subText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
            imageUrl,
            width: 80,
            height: 100,
            fit: BoxFit.cover),
        const SizedBox(
          height: 20,
        ),
        Text(
          subText,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('image_url', imageUrl));
  }
}
