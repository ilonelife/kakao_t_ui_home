import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/data/fake_data.dart';
import 'package:kakao_t_ui_exam/model/ad.dart';
import 'package:kakao_t_ui_exam/model/menu.dart';
import 'package:kakao_t_ui_exam/ui/kakao_t//widgets/ad_view.dart';
import 'package:kakao_t_ui_exam/ui/kakao_t/detail_screen.dart';
import 'package:kakao_t_ui_exam/ui/kakao_t/widgets/menu_widget.dart';

class KakaoTScreen extends StatefulWidget {
  const KakaoTScreen({Key key}) : super(key: key);

  @override
  State<KakaoTScreen> createState() => _KakaoTScreenState();
}

class _KakaoTScreenState extends State<KakaoTScreen> {
  int _index = 0;

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
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    PageController controller = PageController(initialPage: 0);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          _buildMenu(context),
          _buildAds(controller),
          _buildNotice(),
        ],
      ),
    );
  }

  Widget _buildMenu(BuildContext context) {
    return GridView.count(
      childAspectRatio: 1 / 1.3,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 4,
      shrinkWrap: true,
      children: fakeMenus.map(
            (Menu menu) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        DetailScreen(
                          menu: menu,
                        )),
              );
            },
            child: MenuWidget(menu: menu),
          );
        },
      ).toList(), //Text(e.title)).toList(),
    );
  }

  Widget _buildAds(PageController controller) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 150,
            viewportFraction: 0.8,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 5),
            onPageChanged: (index, _) {
              setState(() {
                _index = index;
              });
            }
          ),
          items: fakeAds.map((Ad e) => AdView(ad: e)).toList(),
        ),
        Row(
          children: fakeAds.asMap().entries.map((e) {  // map을 키와 값으로 변경함
            return Container(
              width: 12.0,
              height: 12.0,
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: e.key == _index ? Colors.black : Colors.grey,
              ),
            );
          }).toList(),
        ),
      ],
    );

    // return SizedBox(
    //   height: 100,
    //   child: PageView(
    //     /// [PageView.scrollDirection] defaults to [Axis.horizontal].
    //     /// Use [Axis.vertical] to scroll vertically.
    //     scrollDirection: Axis.horizontal,
    //     controller: controller,
    //     children: fakeAds.map((Ad e) => AdView(ad: e)).toList(),
    //   ),
    // );
  }

  Widget _buildNotice() {
    return Column(
      //    shrinkWrap: true,  // 스크롤이 않되고, size 가 있는 column 처러 동작
      children: List.generate(
          50,
              (index) =>
              ListTile(
                leading: Icon(
                  Icons.notifications_outlined,
                ),
                title: Text('공지 $index'),
                trailing: Icon(
                  Icons.navigate_next_outlined,
                ),
              )),
    );
  }
}
