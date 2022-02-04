import 'package:flutter/material.dart';
import 'package:movie_moa/screens/etcService/login_page/body.dart';
import 'package:movie_moa/widgets/app_bar.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        CustomAppBar(),
        Column(
          children: [Body()],
        )
      ],
    ));
  }
}
