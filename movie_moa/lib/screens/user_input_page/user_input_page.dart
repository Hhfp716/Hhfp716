import 'package:flutter/material.dart';
import 'package:movie_moa/constants/colors.dart';
import 'package:movie_moa/screens/home/widgets/grey_grid.dart';
import 'package:movie_moa/screens/search_screen/search_object_list.dart';
import 'package:movie_moa/tmp/search_screens.dart';
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
  late String _selectedTime;
  @override
  void initState() {
    _selectedTime = '00시 00분';
  }

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
                child: Stack(
                  children: [
                    SearchFunction(
                      hintText: "영화 검색",
                    ),
                  ],
                ),
              ),
              //SearchScreen(),
              grey_grid(),
              Container(
                height: 92,
                width: 350,
                child: Stack(
                  children: [
                    SearchFunction(
                      hintText: "선호하는 장소 검색",
                    ),
                  ],
                ),
              ),
              Option_Selection(
                hintText: "현재 설정된 시각은 $_selectedTime 입니다.",
                icon: Icon(Icons.access_time_outlined),
                onChanged: (value) {},
              ),
              //* textfield에서 수정중...
              // RichText(
              //         text: TextSpan(
              //           children: [
              //             TextSpan(text: ''),
              //             WidgetSpan(
              //               child: Padding(
              //                 padding: const EdgeInsets.symmetric(horizontal: 2.0),
              //                 child: Icon(Icons.access_time_outlined),
              //               ),
              //             ),
              //             TextSpan(text: '현재 설정된 시각은 $_selectedTime 입니다.'),
              //           ],
              //         ),
              //       ),
              ElevatedButton(
                child: Text('시간 설정하기',
                    style: TextStyle(
                      fontSize: 20.0,
                    )),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 241, 172, 195),
                  onPrimary: Colors.black,
                ),
                onPressed: () {
                  Future<TimeOfDay?> selectedTime = showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                    builder: (context, child) {
                      return Theme(
                        data: ThemeData.light().copyWith(
                          colorScheme: ColorScheme.light(
                            primary: Color.fromARGB(255, 221, 88, 190),
                            onSurface: Color.fromARGB(255, 214, 132, 170),
                          ),
                          buttonTheme: ButtonThemeData(
                            colorScheme:
                                ColorScheme.light(primary: Colors.black),
                          ),
                        ),
                        child: child!,
                      );
                    },
                  );
                  selectedTime.then((timeOfDay) {
                    setState(() {
                      // _selectedTime = '${timeOfDay?.hour}시  ${timeOfDay?.minute}분';
                      if (timeOfDay?.minute == 0) {
                        _selectedTime =
                            '${timeOfDay?.hour}시  ${timeOfDay?.minute}0분';
                      } else {
                        _selectedTime =
                            '${timeOfDay?.hour}시  ${timeOfDay?.minute}분';
                      }
                    });
                  });
                },
              ),
              // Text('$_selectedTime'),
              /*
              option Selection 함수는 2 page 입력 란.
               */
              grey_grid(),
              // Container(
              //   padding: EdgeInsets.fromLTRB(0, 50, 0, 10),
              //   alignment: Alignment.center,
              //   child: Text('+추가조건설정',
              //       style: TextStyle(
              //         fontSize: 25,
              //         fontWeight: FontWeight.bold,
              //       )),
              // ),
              // Additional_Option(),
              // /*추가 옵션 설정 부분 */
              // SizedBox(height: 30),
              // grey_grid(),
              Confirm_Button(),
              grey_grid(),
            ],
          ),
        ],
      ),
    );
  }
}
