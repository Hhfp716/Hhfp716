import 'package:flutter/material.dart';
import 'package:movie_moa/screens/user_input_page/user_input_page.dart';

class Next_Button extends StatelessWidget {
  const Next_Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 229, 190, 236), //* 버튼 색상 변경
          borderRadius: BorderRadius.circular(50),
          //shape: BoxShape.circle,
        ),
        margin: EdgeInsets.fromLTRB(150, 0, 150, 0), //* 마진 변경 및 텍스트 스타일 설정
        child: Text('Next',
            style: TextStyle(
              color: Colors.black,
            )),
      ),
      onPressed: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => userInputPage())),
    );
  }
}
