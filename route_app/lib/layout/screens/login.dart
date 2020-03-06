import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../constants/colors.dart' as color;

/// Documentation
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/sorry.png'),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Column(
                  children: <Widget>[
                    Container(
                        alignment: Alignment.center,
                        height: constraints.maxHeight / 2,
                        width: MediaQuery.of(context).size.width / 2,
                        child: const Text('Login Screen"',
                            style:
                                TextStyle(fontSize: 35.0, color: color.Text))),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
