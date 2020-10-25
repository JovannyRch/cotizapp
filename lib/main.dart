import 'package:cotizapp/routes/routes.dart' as routes;
import 'package:cotizapp/screens/home_screen.dart';
import 'package:cotizapp/screens/tabs_screen.dart';
import 'package:cotizapp/shared/user_preferences.dart';
import 'package:cotizapp/storage/App.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'const/conts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  UserPreferences userPrefrences = new UserPreferences();
  await userPrefrences.initPrefs();

  String initialRoute;
  if (userPrefrences.isLogged) {
    initialRoute = routes.home;
  } else {
    initialRoute = routes.login;
  }

  runApp(MyApp(initialRoute));
}

class MyApp extends StatefulWidget {
  final initialRoute;
  MyApp(this.initialRoute);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey();

  @override
  void initState() {
    super.initState();
    /* Navigator.pushNamed(context, '/'); */
    /* navigatorKey.currentState.pushNamed('/', arguments: ''); */
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppState()),
      ],
      child: MaterialApp(
        theme: ThemeData(primaryColor: kBaseColor),
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        title: 'CotizApp',
        initialRoute: widget.initialRoute,
        routes: routes.routes,
      ),
    );
  }
}
