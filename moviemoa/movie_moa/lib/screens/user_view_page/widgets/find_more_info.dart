import 'package:flutter/material.dart';

class Find_more_info extends StatelessWidget {
  const Find_more_info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          height: 30,
          child: Text(
            '+더 많은 영화관 보기+',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
