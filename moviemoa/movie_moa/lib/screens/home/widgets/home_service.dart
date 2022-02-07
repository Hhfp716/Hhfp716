import 'package:flutter/material.dart';
import 'package:movie_moa/screens/home/widgets/appname_logo.dart';
import 'package:movie_moa/screens/home/widgets/personel_profile.dart';
import 'package:movie_moa/screens/home/widgets/grey_grid.dart';
import 'package:movie_moa/screens/home/widgets/next_button.dart';
import 'package:movie_moa/component/option.dart';
import 'package:movie_moa/screens/home/widgets/upper_teamname.dart';

class HomePageUi extends StatefulWidget {
  const HomePageUi({Key? key}) : super(key: key);

  @override
  _HomePageUiState createState() => _HomePageUiState();
}

class _HomePageUiState extends State<HomePageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Upper_TeamName(), // 최상단 TeamName Bar
          grey_grid(),

          logo_name(), //App_Name + center logo
          SizedBox(height: 40),
          grey_grid(),

          book_mark(), //파일 명 변경 예정, 개인 프로필 버튼
          grey_grid(),
          SizedBox(height: 100),
          Container(
              alignment: Alignment.bottomLeft,
              child: Text('Priority option setting')),
          grey_grid(),
          option_view(
            selectedValue: '영화가 우선',
            OptionList: ['영화가 우선', '장소가 우선', '시간이 우선'],
          ), // 변경해야할 부분

          Next_Button(), // Move to Nextpage Button
        ],
      ),
    );
  }
}
