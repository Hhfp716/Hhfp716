import 'package:flutter/material.dart';
import 'package:movie_moa/screens/user_view_page/user_view_page.dart';

class Confirm_Button extends StatelessWidget {
  //const Confirm_Button({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RawMaterialButton(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.pink,
            //shape: BoxShape.circle,
          ),
          //margin: EdgeInsets.fromLTRB(125, 0, 0, 0),
          width: 150,
          height: 70,
          child: Text('Confirm!'),
        ),
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => User_View_Page())),
      ),
    );
  }
}
