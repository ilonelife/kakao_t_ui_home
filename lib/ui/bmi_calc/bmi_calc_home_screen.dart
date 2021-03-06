import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/ui/bmi_calc/bmi_calc_result_screen.dart';

class BmiCalcHomeScreen extends StatefulWidget {
  const BmiCalcHomeScreen({Key? key}) : super(key: key);

  @override
  State<BmiCalcHomeScreen> createState() => _BmiCalcHomeScreenState();
}

class _BmiCalcHomeScreenState extends State<BmiCalcHomeScreen> {
  final _formKey = GlobalKey<FormState>();
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();

  @override
  void dispose() {
    _heightController.dispose();
    _weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI 계산기'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '키',
                ),
               keyboardType: TextInputType.number,
                controller: _heightController,
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return '키를 입력하세요';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '몸무게',
                ),
               keyboardType: TextInputType.number,
                controller: _weightController,
                validator: (value) {
                  if (value != null && value.trim().isEmpty) {
                    return '몸무게를 입력하세요';
                  }
                  return null;
                },
              ),
              Container(
                margin: const EdgeInsets.all(20.0),
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {
                    // if(_formKey.currentState == null) {
                    //   return;
                    // }
                    // if(_formKey.currentState!.validate()) {
                    if (_formKey.currentState?.validate() ?? false) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BmiResultScreen(
                            double.parse(_heightController.text.trim()),
                            double.parse(_weightController.text.trim()),
                          ),
                        ),
                      );
                    }
                  },
                  child: const Text('계산하기'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
