import 'package:flutter/material.dart';

class Ad extends StatelessWidget {
  final String title;
  final Color color;

  const Ad({
    Key key,
    this.title,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container(
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
                      title,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      '기왕 늦은 거 편하게 택시타고 가자',
                    ),
                  ],
                ),
              ),
              Image.network(
                'https://cdn.pixabay.com/photo/2021/09/08/15/24/couple-6607143_960_720.jpg',
                height: 200,
              )
            ],
          ),
        ),
      ),
    );
  }
}
