import 'package:flutter/material.dart';
import 'package:movie_moa/constants/colors.dart';
import 'package:movie_moa/screens/home/widgets/grey_grid.dart';
import 'package:movie_moa/screens/search_screen/search_object_list.dart';
import 'package:movie_moa/screens/search_screen/search_screens.dart';
import 'package:movie_moa/screens/user_input_page/widgets/additional_option.dart';
import 'package:movie_moa/screens/user_input_page/widgets/confirm_button.dart';
import 'package:movie_moa/screens/user_input_page/widgets/option_selection.dart';
import 'package:movie_moa/screens/user_view_page/widgets/upper_title.dart';
import 'package:movie_moa/widgets/app_bar.dart';

class userInputPage extends StatefulWidget {
  const userInputPage({Key? key}) : super(key: key);

  @override
  _userInputPageState createState() => _userInputPageState();
}

class _userInputPageState extends State<userInputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [Upper_Title(), CustomAppBar()],
          ), //page_2 title
          grey_grid(),
          Column(
            children: [
              /* Option_Selection(
                hintText: "영화 검색",
                icon: Icon(Icons.movie_outlined),
                onChanged: (value) => ObjectList(),
              ),*/

              Container(
                height: 92,
                width: 350,
                child: ObjectList(
                  hintext: "영화 검색",
                ),
              ),
              //SearchScreen(),
              grey_grid(),
              Container(
                height: 92,
                width: 350,
                child: ObjectList(
                  hintext: "장소 검색",
                ),
              ),
              Option_Selection(
                hintText: "시간 검색",
                icon: Icon(Icons.access_time_outlined),
                onChanged: (value) {},
              ),
              /*
              option Selection 함수는 2 page 입력 란.
               */
              grey_grid(),
              Container(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 10),
                alignment: Alignment.center,
                child: Text('+추가조건설정',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Additional_Option(),
              /*추가 옵션 설정 부분 */
              SizedBox(height: 30),
              grey_grid(),
              Confirm_Button(),
              grey_grid(),
            ],
          ),
        ],
      ),
    );
  }
}
