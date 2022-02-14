import 'package:flutter/material.dart';
import 'package:movie_moa/screens/home/widgets/grey_grid.dart';
import 'package:movie_moa/screens/search_screen/movie_autocomplete.dart';
import 'package:movie_moa/tmp/on_off_button.dart';
import 'package:movie_moa/screens/etcService/detail_profile/detail_profile.dart';
import 'package:movie_moa/screens/etcService/widgets/profile_bar.dart';

class loginSuccessScreen extends StatefulWidget {
  const loginSuccessScreen({
    Key? key,
  }) : super(key: key);

  @override
  _loginSuccessScreenState createState() {
    return _loginSuccessScreenState();
  }
  // @override
  // _loginSuccessScreenState createState() => _loginSuccessScreenState();
}

class _loginSuccessScreenState extends State<loginSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    final width = data.size.width;
    final height = data.size.height;
    return Scaffold(
      body: Column(
        children: <Widget>[
          /*Container(
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
          ),*/
          SizedBox(height: height * 0.05),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(height * 0.03),
                child: profileBar(
                    page: detailProfile(), txt: "로그인 후 ID/닉네임 들어갈 자리"),
              ),
            ],
          ),
          grey_grid(),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              child: MaterialButton(
                child: Row(
                  children: [
                    Icon(Icons.star_outlined),
                    Text("즐겨찾기 생성"),
                  ],
                ),
                onPressed: () {},
              ),
            ),
          ]),
          grey_grid(),
          /* 위 Row는 클릭시 즐겨찾기를 설정할 수 있는 페이지로 연결한 후, 즐겨찾기 값을 설정 ->  해당 값을 통해 즐겨찾기 서비스 제공*/
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("<즐겨찾기>")],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("여기서 부터 생성된 즐겨찾기 생성")],
            )
          ])
        ],
      ),
    );
  }
}
