import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/ui/home/widgets/ad.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '카카오 T',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.orange,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    PageController controller = PageController(initialPage: 0);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.network(
                      'https://cdn.pixabay.com/photo/2021/09/08/15/24/couple-6607143_960_720.jpg',
                      width: 80,
                      height: 100,
                      fit: BoxFit.cover),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '택시',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.network(
                      'https://cdn.pixabay.com/photo/2021/09/08/15/24/couple-6607143_960_720.jpg',
                      width: 80,
                      height: 100,
                      fit: BoxFit.cover),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '택시',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.network(
                      'https://cdn.pixabay.com/photo/2021/09/08/15/24/couple-6607143_960_720.jpg',
                      width: 80,
                      height: 100,
                      fit: BoxFit.cover),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '택시',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.network(
                      'https://cdn.pixabay.com/photo/2021/09/08/15/24/couple-6607143_960_720.jpg',
                      width: 80,
                      height: 100,
                      fit: BoxFit.cover),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '택시',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.network(
                      'https://cdn.pixabay.com/photo/2021/09/08/15/24/couple-6607143_960_720.jpg',
                      width: 80,
                      height: 100,
                      fit: BoxFit.cover),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '택시',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.network(
                      'https://cdn.pixabay.com/photo/2021/09/08/15/24/couple-6607143_960_720.jpg',
                      width: 80,
                      height: 100,
                      fit: BoxFit.cover),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '택시',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.network(
                      'https://cdn.pixabay.com/photo/2021/09/08/15/24/couple-6607143_960_720.jpg',
                      width: 80,
                      height: 100,
                      fit: BoxFit.cover),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '택시',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              SizedBox(
                width: 80,
                height: 80,
              ),
            ],
          ),
          SizedBox(
            height: 100,
            child: PageView(
              /// [PageView.scrollDirection] defaults to [Axis.horizontal].
              /// Use [Axis.vertical] to scroll vertically.
              scrollDirection: Axis.horizontal,
              controller: controller,
              children: <Widget>[
                Ad(
                  title: '제목111',
                  color: Colors.red,
                ),
                Ad(
                  title: '제목222',
                  color: Colors.blue,
                ),
                Ad(
                  title: '제목333',
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
