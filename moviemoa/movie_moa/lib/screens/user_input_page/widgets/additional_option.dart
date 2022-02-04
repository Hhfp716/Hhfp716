import 'package:flutter/material.dart';
import 'package:movie_moa/component/option.dart';
import 'package:movie_moa/constants/colors.dart';

class Additional_Option extends StatelessWidget {
  const Additional_Option({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: EdgeInsets.only(bottom: 25),
          height: 200,
          width: 200,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: kBackgroundColor,
              border: Border.all(
                color: Colors.pink.withOpacity(0.8),
                style: BorderStyle.solid,
                width: 3.0,
              )),
          child: Column(
            children: [
              option_view(
                  OptionList: ['영화관 브랜드 설정', 'CGV', '롯데시네마', '메가박스'],
                  selectedValue: '영화관 브랜드 설정'),
              Column(
                children: [
                  option_view(
                      OptionList: ['팝업 리스트 수 설정', '10', '20', '30'],
                      selectedValue: '팝업 리스트 수 설정'),
                ],
              )
            ],
          )),
    );
  }
}
