import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/data/fake_data.dart';
import 'package:kakao_t_ui_exam/model/ad.dart';
import 'package:kakao_t_ui_exam/model/menu.dart';
import 'package:kakao_t_ui_exam/ui/kakao_t//widgets/ad_view.dart';
import 'package:kakao_t_ui_exam/ui/kakao_t/widgets/menu_widget.dart';

class KakaoTScreen extends StatelessWidget {
  const KakaoTScreen({Key key}) : super(key: key);

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
          _buildMenu(),
          _buildAds(controller),
          _buildNotice(),
        ],
      ),
    );
  }

  Widget _buildMenu() {
    return GridView.count(
      childAspectRatio: 1 / 1.3,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 4,
      shrinkWrap: true,
      children: fakeMenus.map((Menu e) => MenuWidget(menu: e)).toList(), //Text(e.title)).toList(),
    );
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
          ),
        );
  }

  Widget _buildNotice() {
    return Column(
  //    shrinkWrap: true,  // 스크롤이 않되고, size 가 있는 column 처러 동작
      children: List.generate(50, (index) => ListTile(
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
