import 'package:flutter/material.dart';

class Ad extends StatelessWidget {
  final String title;
  final String body;
  final Color color;
  final String image;

  const Ad({
    Key key,
    this.title,
    this.body,
    this.color,
    this.image,
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
                      body,
                    ),
                  ],
                ),
              ),
              Image.network(
                image,
                height: 200,
              )
            ],
          ),
        ),
      ),
    );
  }
}
