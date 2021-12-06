import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/model/ad.dart';
import 'package:kakao_t_ui_exam/model/menu.dart';

final List<Menu> fakeMenus =
    List.generate(7, (index) => Menu(
      title: '택시',
      imageUrl: 'https://cdn.pixabay.com/photo/2021/09/08/15/24/couple-6607143_960_720.jpg',
    ));


final List<Ad> fakeAds = [
  Ad(
    title: '그러게 일찍 들어가 ',
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
];
