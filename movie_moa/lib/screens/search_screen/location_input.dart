import 'package:flutter/material.dart';
import 'package:movie_moa/component/rounded_input_field.dart';
import 'package:movie_moa/component/variable.dart';
import 'package:movie_moa/constants/colors.dart';

class LocationInput extends StatefulWidget {
  const LocationInput({Key? key}) : super(key: key);

  @override
  _LocationInputState createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  TextEditingController controller = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16),
        child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: TextField(
              cursorColor: Colors.black.withOpacity(0.8),
              keyboardType: TextInputType.streetAddress,
              decoration: InputDecoration(
                labelText: "현재 위치 입력",
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.map_outlined, color: Colors.grey),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              onChanged: (text) => {
                location =
                    text, //user input location value 가 variable 폴더 안에 있는 location 변수에 저장됨.
              },
            )));
  }
}