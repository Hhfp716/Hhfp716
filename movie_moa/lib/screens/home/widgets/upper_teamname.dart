import 'package:flutter/material.dart';
import 'package:movie_moa/constants/colors.dart';
import 'package:movie_moa/screens/home/widgets/grey_grid.dart';

class Upper_TeamName extends StatelessWidget {
  const Upper_TeamName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(left: 300),
        child: Text(
          'TeamName!', // 어떻게 처리하지?
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
