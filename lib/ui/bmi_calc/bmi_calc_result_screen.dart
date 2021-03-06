import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  final double height;
  final double weight;

  const BmiResultScreen(this.height, this.weight, {Key? key}): super (key: key);

  @override
  Widget build(BuildContext context) {
    final bmi = weight / ((height / 100 ) * (height / 100)); 
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('결과'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _calculate(bmi),
            style: const TextStyle(fontSize: 40),
          ),
          const SizedBox(
            height: 20,
          ),
          _sketchIcon(bmi),
        ],
      )),
    );
  }

  String _calculate(double bmi) {
    var result = '저체중';
    if (bmi >= 35) {
      result ='고도비만';
    } else if(bmi >= 30) {
      result = '2단계 비만';
    } else if(bmi >= 25) {
      result = '1단계 비만';
    } else if(bmi >= 23) {
      result = '과체중';
    } else if(bmi >= 18.5) {
      result = '정상';
    }

    return result;
  }

  Widget _sketchIcon(double bmi) {
    if (bmi > 23) {
      return const Icon(
        Icons.sentiment_very_dissatisfied,
        size: 100,
        color: Colors.red,
      );
    } else if (bmi > 18.5) {
      return const Icon(
        Icons.sentiment_neutral,
        size: 100,
        color: Colors.lightGreen,
      );
    } else {
      return const Icon(
        Icons.sentiment_very_satisfied,
        size: 100,
        color: Colors.amber,
      );
    }
  }
}
