import 'package:flutter/material.dart';

class BmicalResultScreen extends StatelessWidget {
  const BmicalResultScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('결과'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text(
            '결과 화면',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
