import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/data/fake_data.dart';
import 'package:kakao_t_ui_exam/model/ad.dart';
import 'package:kakao_t_ui_exam/ui/home/widgets/ad_view.dart';
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
      child: ListView(
        children: [
          ..._buildMenu(),
          _buildAds(controller),
          _buildNotice(),
        ],
      ),
    );
  }

  List<Widget> _buildMenu() {
    return [
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
            sub_text: '제네시스',
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
    ];
  }

  Widget _buildAds(PageController controller) {
    return SizedBox(
          height: 100,
          child: PageView(
            /// [PageView.scrollDirection] defaults to [Axis.horizontal].
            /// Use [Axis.vertical] to scroll vertically.
            scrollDirection: Axis.horizontal,
            controller: controller,
            children: fakeAds.map((Ad e) => AdView(ad: e)).toList(),
           // <Widget>[
           //   AdView(
           //     ad: fakeAds[0],
           //   ),
           //   AdView(
           //     ad: fakeAds[1],
           //   ),
           //   AdView(
           //     ad: fakeAds[2],
           //   ),
           // ],
          ),
        );
  }

  Widget _buildNotice() {
    return Column(
  //    shrinkWrap: true,  // 스크롤이 않되고, size 가 있는 column 처러 동작
      children: List.generate(50, (index) => Text('공지 $index')),

    );
  }
}
