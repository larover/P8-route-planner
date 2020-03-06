import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:route_app/layout/router.dart';
import '../constants/colors.dart' as color;


/// Custom button
class Button extends StatelessWidget {
  /// Button contructor, takes button text as parameter
  const Button({
    Key key,
    @required this.text,
  }) : super(key: key);

  /// Button text
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      width: 185.0,
      child: RaisedButton(
        onPressed: () {
        },
        child: Text(text, style: const TextStyle(fontSize: 20.0)),
        color: color.ButtonBackground,
        textColor: color.Text,
      ),
    );
  }
}