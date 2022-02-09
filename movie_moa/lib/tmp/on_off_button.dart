import 'package:flutter/material.dart';

class onOffButton extends StatefulWidget {
  const onOffButton({Key? key}) : super(key: key);

  @override
  _onOffButtonState createState() => _onOffButtonState();
}

class _onOffButtonState extends State<onOffButton> {
  bool toggleValue = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        duration: Duration(microseconds: 500),
        height: 35.0,
        width: 35.0,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: toggleValue
                ? Colors.greenAccent[100]
                : Colors.grey.withOpacity(0.5)),
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeIn,
              top: 7.0,
              left: toggleValue ? 0.0 : 0.0,
              right: toggleValue ? 0.0 : 0.0,
              child: InkWell(
                onTap: toggleButton,
                child: AnimatedSwitcher(
                  duration: Duration(milliseconds: 500),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return ScaleTransition(scale: animation, child: child);
                  },
                  child: toggleValue
                      ? Icon(Icons.check_circle,
                          color: Colors.green, size: 20.0, key: UniqueKey())
                      : Icon(Icons.cancel_outlined,
                          color: Colors.redAccent,
                          size: 20.0,
                          key: UniqueKey()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  toggleButton() {
    setState(() {
      toggleValue = !toggleValue;
    });
  }
}
