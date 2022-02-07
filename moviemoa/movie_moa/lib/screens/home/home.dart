import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:movie_moa/screens/etcService/my_page.dart';

import 'package:movie_moa/screens/home/widgets/home_service.dart';

class HomePage extends StatelessWidget {
  int screenIndex = 0;
  List<Widget> screenList = [Text('Home'), Text('MyPage')];
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home!',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Mypage!',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                    child: HomePageUi()); /*홈페이지 서비스 기본 페이지 코드*/
              },
            );
            break;

          case 1:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(child: MyPage()); /*마이페이지 창으로 이동*/
              },
            );

          default:
            return const CupertinoTabView();
        }
      },
    );
  }
}
