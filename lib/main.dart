import 'package:cotizapp/screens/home_screen.dart';
import 'package:cotizapp/screens/tabs_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CotizApp',
      home: TabsScreen(),
    );
  }
}
