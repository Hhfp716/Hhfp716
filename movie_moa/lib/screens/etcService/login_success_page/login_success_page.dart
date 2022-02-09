import 'package:flutter/material.dart';
import 'package:movie_moa/screens/search_screen/search_object_list.dart';
import 'package:movie_moa/tmp/on_off_button.dart';
import 'package:movie_moa/screens/etcService/detail_profile/detail_profile.dart';
import 'package:movie_moa/screens/etcService/widgets/profile_bar.dart';
import 'package:movie_moa/tmp/search+history.dart';

class loginSuccessScreen extends StatefulWidget {
  const loginSuccessScreen({
    Key? key,
  }) : super(key: key);

  @override
  _loginSuccessScreenState createState() => _loginSuccessScreenState();
}

class _loginSuccessScreenState extends State<loginSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            top: 60,
            bottom: 15,
            left: 25,
            right: 25,
          ),
          child: profileBar(
            page: datailProfile(),
            txt: "로그인 후 ID/닉네임 들어갈 자리",
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('장르/영화관/시간')],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('option1'),
                onOffButton(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 92,
                  width: 350,
                  child: Stack(
                    children: [
                      SearchFunction_(
                        hintText: "선호하는 장소 검색",
                      ),
                    ],
                  ),
                ),
                /* Container(
                    height: 92,
                    width: 350,
                    child: SearchFunction(
                      hintText: "선호하는 장소 검색",
                    )),*/
              ],
            )
          ],
        )
      ]),
    );
  }
}
