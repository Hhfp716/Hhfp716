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
          color: Colors.pink,
          borderRadius: BorderRadius.circular(50),
          //shape: BoxShape.circle,
        ),
        margin: EdgeInsets.fromLTRB(170, 0, 0, 0),
        width: 50,
        child: Text('Next'),
      ),
      onPressed: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => User_Input_Page())),
    );
  }
}
