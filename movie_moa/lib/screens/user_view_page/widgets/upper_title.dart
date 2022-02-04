import 'package:flutter/material.dart';

class Upper_Title extends StatelessWidget {
  //const Upper_Title({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 50, 0, 25),
      width: 200,
      //padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.pink.withOpacity(0.5),
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: Colors.pink.withOpacity(0.5),
          )),
      child: Text(
        'Movie_Moa',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
}
