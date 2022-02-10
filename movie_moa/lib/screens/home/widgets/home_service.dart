import 'package:flutter/material.dart';
import 'package:movie_moa/component/toggleSwitch.dart';
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
          //* root
          // option_view(
          //   selectedValue: '영화가 우선',
          //   OptionList: ['영화가 우선', '장소가 우선', '시간이 우선'],
          // ), // 변경해야할 부분

//*1차 시도: 오류 - RenderBox was not laid out.
          // CustomSwitch(
          //   selectedValue: '장소가 중요해!',
          //   optionlist: ['장소가 중요해!', '시간이 중요해!'],
          // ),
//*2차 시도:
          ToggleSwitch(), //* 토글버튼으로 설정(영화/장소/시간)
          //  다중선택 가능, 추후에 선택한 조건만 사용자가 입력하게끔?
          //  선택결과값이 null인 경우에는 next button 클릭시 경고메시지 팝업창
          Next_Button(), // Move to Nextpage Button
        ],
      ),
    );
  }
}
