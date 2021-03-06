import 'package:flutter/material.dart';
import 'package:route_app/core/models/user_model.dart';
import 'package:route_app/core/utils/environment.dart' as environment;
import 'package:route_app/routes.dart';
import 'package:route_app/layout/constants/colors.dart' as color;
import 'core/services/interfaces/API/user.dart';
import 'locator.dart';
import 'package:flutter_stetho/flutter_stetho.dart';

/// Is the app in debug mode
const bool Debug = true;

String _initScreen = '/';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();

  if (Debug) {
    environment.setFile('assets/environments.json').whenComplete(() async {
      Stetho.initialize();
      _startApp();
    });
  } else {
    environment.setFile('assets/environments.prod.json').whenComplete(() {
      _startApp();
    });
  }
}

void _startApp() {
  final UserAPI _user = locator.get<UserAPI>();
  _user.activeUser.then((User user) {
    if (user != null) {
      _user.setActiveUser(user);
      _initScreen = '/home';
    }
    runApp(App());
  });
}

/// Main app class
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Routeplanner',
      routes: routes,
      initialRoute: _initScreen,
      theme: ThemeData(
        unselectedWidgetColor: color.NeturalGrey,
        accentColor: color.CorrectColor,
        canvasColor: Colors.transparent
      )
    );
  }
}
