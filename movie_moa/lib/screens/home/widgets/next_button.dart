import 'package:flutter/material.dart';
import 'package:movie_moa/screens/user_input_page/user_input_page.dart';

class NextButton extends StatelessWidget {
  const NextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    final width = data.size.width;
    final height = data.size.height;
    return RawMaterialButton(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 229, 190, 236), //* 버튼 색상 변경
          borderRadius: BorderRadius.circular(width * 0.1),
          //shape: BoxShape.circle,
        ),
        margin: EdgeInsets.fromLTRB(
            width * 0.3, 0, width * 0.3, 0), //* 마진 변경 및 텍스트 스타일 설정
        child: Text('Next',
            style: TextStyle(
              fontSize: width * 0.033,
              color: Colors.black,
            )),
      ),
      onPressed: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => userInputPage())),
    );
  }
}
