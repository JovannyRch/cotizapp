import 'package:cotizapp/screens/negocio/publicidad.dart';
import 'package:cotizapp/widgets/custom_app_bar.dart';
import 'package:cotizapp/widgets/custom_haeder.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemMenu {
  IconData icon;
  String title;
  ItemMenu({this.icon, this.title});
}

class NegocioScreen extends StatefulWidget {
  NegocioScreen({Key key}) : super(key: key);

  @override
  _NegocioScreenState createState() => _NegocioScreenState();
}

class _NegocioScreenState extends State<NegocioScreen> {
  Size _size;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  List<ItemMenu> items = [
    ItemMenu(icon: FontAwesomeIcons.fileSignature, title: "Cotizaciones"),
    ItemMenu(icon: FontAwesomeIcons.dollarSign, title: "Facturas"),
    ItemMenu(icon: FontAwesomeIcons.toolbox, title: "Proyectos"),
    ItemMenu(icon: FontAwesomeIcons.addressBook, title: "Clientes"),
    ItemMenu(icon: FontAwesomeIcons.star, title: "Opiniones"),
    ItemMenu(icon: FontAwesomeIcons.hammer, title: "Catálogo"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomPadding: false,
      body: _stack(),
    );
  }

  Widget _stack() {
    _size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        _body(),
        CustomHeader(
          title: "Negocio",
          onPressed: () => scaffoldKey.currentState.openDrawer(),
        ),
        _botones(),
      ],
    );
  }

  Widget _botones() {
    return Positioned(
      bottom: 0,
      child: Column(
        children: [
          Container(
            height: _size.height * 0.08,
            width: _size.width,
            decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                )),
            child: Center(
              child: Text(
                "Navega en las opciones",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
          Container(
            height: _size.height * 0.08,
            width: _size.width,
            decoration: BoxDecoration(
              color: Colors.blue[700],
            ),
            child: Center(
              child: Text(
                "Prueba",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _body() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(
          top: 60.0,
          left: 10.0,
          right: 10.0,
        ),
        child: Column(
          children: [
            Publicidad(),
            _menu(),
          ],
        ),
      ),
    );
  }

  Widget _menu() {
    return Container(
      width: _size.width * 1.0,
      height: _size.height * 0.30,
      margin: EdgeInsets.only(top: 30.0),
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buttonIcon(items[0]),
              _buttonIcon(items[1]),
              _buttonIcon(items[2])
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buttonIcon(items[3]),
              _buttonIcon(items[4]),
              _buttonIcon(items[5])
            ],
          ),
        ],
      ),
    );
  }

  Widget _buttonIcon(ItemMenu item) {
    return Container(
      width: _size.width * 0.25,
      child: Column(
        children: [
          Container(
            height: 60.0,
            width: 60.0,
            decoration: new BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xFF486a8c),
                width: 2.0,
              ),
            ),
            child: Center(child: FaIcon(item.icon)),
          ),
          SizedBox(height: 7.0),
          Text(
            item.title,
            style: TextStyle(
              color: Color(0xFF434859),
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
