import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/ui/bmi_calc/bmi_calc_home_screen.dart';
import 'package:kakao_t_ui_exam/ui/counter/counter_screen.dart';
import 'package:kakao_t_ui_exam/ui/kakao_t/kakao_t_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    final _screens = [
      const KakaoTScreen(),
      const CounterScreen(),
      const BmiCalcHomeScreen(),
    ];

    int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (index) {
          setState(() {
              _index = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Kakao T',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.watch),
            label: 'counter',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.voicemail),
            label: 'BMI',
          ),
        ],
      ),
    );
  }
}
