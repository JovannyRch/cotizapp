import 'package:cotizapp/screens/home_screen.dart';
import 'package:cotizapp/screens/negocio_screen.dart';
import 'package:cotizapp/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabsScreen extends StatefulWidget {
  TabsScreen({Key key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _currentScreen = 0;

  void changeValue(int value) {
    setState(() {
      _currentScreen = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentScreen,
        children: [
          HomeScreen(),
          NegocioScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: changeValue,
        currentIndex: _currentScreen,
        items: [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.home),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.briefcase),
            label: "Negocio",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.user),
            label: "Perfil",
          )
        ],
      ),
    );
  }
}
