import 'package:flutter/material.dart';
import 'package:movie_moa/constants/colors.dart';
import 'package:movie_moa/screens/etcService/login_page/login_page.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(
        top: 60,
        bottom: 15,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildIcon(Icons.person),
          Text(
            '로그인이 필요한 서비스 입니다.',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => LoginScreen())),
              child: Icon(Icons
                  .keyboard_arrow_right_outlined)), /* 마이페이지 로그인 전 > 버튼 누르면 로그인 창으로 이동 */
        ],
      ),
    ));
  }
}

Widget _buildIcon(IconData icon) {
  return Container(
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(
          color: kGridColor,
        )),
    child: Icon(icon),
  );
}
