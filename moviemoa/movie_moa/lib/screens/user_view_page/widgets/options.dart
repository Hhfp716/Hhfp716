import 'package:flutter/material.dart';

class Option_View extends StatelessWidget {
  //const Options({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: Text('설정한 조건'),
        ),
        Row(
          //crossAxisAlignment: CrossAxisAlignment.center

          children: [
            MaterialButton(
              padding: EdgeInsets.symmetric(horizontal: 150),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              child: Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('A / B / C'),
                      //Icon(Icons.arrow_forward),
                    ],
                  )),
              onPressed: () => Navigator.of(context).pop(), //page2로 이동)
            ),
          ],
        ),
      ],
    );
  }
}
