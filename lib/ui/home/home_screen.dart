import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/ui/home/widgets/ad.dart';
import 'package:kakao_t_ui_exam/ui/home/widgets/menu_button.dart';

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
              MenuButton(
                image_url:
                    'https://cdn.pixabay.com/photo/2021/09/08/15/24/couple-6607143_960_720.jpg',
                sub_text: 'BMW',
              ),
              MenuButton(
                image_url:
                    'https://cdn.pixabay.com/photo/2021/09/08/15/24/couple-6607143_960_720.jpg',
                sub_text: '벤츠',
              ),
              MenuButton(
                image_url:
                    'https://cdn.pixabay.com/photo/2021/09/08/15/24/couple-6607143_960_720.jpg',
                sub_text: '아우디',
              ),
              MenuButton(
                image_url:
                    'https://cdn.pixabay.com/photo/2021/09/08/15/24/couple-6607143_960_720.jpg',
                sub_text: '폭스바겐',
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MenuButton(
                image_url:
                    'https://cdn.pixabay.com/photo/2021/09/08/15/24/couple-6607143_960_720.jpg',
                sub_text: '미니',
              ),
              MenuButton(
                image_url:
                    'https://cdn.pixabay.com/photo/2021/09/08/15/24/couple-6607143_960_720.jpg',
                sub_text: '포르쉐',
              ),
              MenuButton(
                image_url:
                    'https://cdn.pixabay.com/photo/2021/09/08/15/24/couple-6607143_960_720.jpg',
                sub_text: '부가티',
              ),
              SizedBox(
                width: 80,
                height: 80,
              ),
            ],
          ),
          SizedBox(
            height: 16,
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
                  title: '그러게 일찍 ',
                  body: '기왕 늦은거 편하게 택시타고 가',
                  color: Colors.red,
                  image:
                      'https://cdn.pixabay.com/photo/2021/09/08/15/24/couple-6607143_960_720.jpg',
                ),
                Ad(
                  title: '2번째 제목 ',
                  body: '기왕 늦은거 편하게 택시타고 가',
                  color: Colors.blue,
                  image:
                      'https://cdn.pixabay.com/photo/2021/09/08/15/24/couple-6607143_960_720.jpg',
                ),
                Ad(
                  title: '3번째 제목  ',
                  body: '기왕 늦은거 편하게 택시타고 가',
                  color: Colors.green,
                  image:
                      'https://cdn.pixabay.com/photo/2021/09/08/15/24/couple-6607143_960_720.jpg',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
