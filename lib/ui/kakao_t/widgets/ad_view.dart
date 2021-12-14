import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/model/ad.dart';

class AdView extends StatelessWidget {
  final Ad ad;

  const AdView({
    Key? key,
    required this.ad,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: ad.color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ad.title,
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    ad.body,
                  ),
                ],
              ),
            ),
            Image.network(
              ad.image,
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}
