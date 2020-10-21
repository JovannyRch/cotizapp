import 'package:animate_do/animate_do.dart';
import 'package:cotizapp/widgets/fat_button.dart';
import 'package:cotizapp/widgets/headers_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemBoton {
  final IconData icon;
  final String texto;
  final Color color1;
  final Color color2;

  ItemBoton(this.icon, this.texto, this.color1, this.color2);
}

class HomeScreen extends StatelessWidget {
  final items = <ItemBoton>[
    new ItemBoton(
      FontAwesomeIcons.toolbox,
      'Crea tu primera cotización',
      Color(0xff6989F5),
      Color(0xff906EF5),
    ),
    new ItemBoton(
      FontAwesomeIcons.plus,
      'Crea tu primer proyecto',
      Color(0xff66A9F2),
      Color(0xff536CF6),
    ),
    new ItemBoton(
      FontAwesomeIcons.user,
      'Revisa tu perfil',
      Color(0xffF2D572),
      Color(0xffE06AA3),
    ),
    new ItemBoton(
      FontAwesomeIcons.biking,
      'Visita tu perfil en línea',
      Color(0xff317183),
      Color(0xff46997D),
    ),
    new ItemBoton(
      FontAwesomeIcons.cashRegister,
      'Coonce más sobre pagos en línea',
      Color(0xff6989F5),
      Color(0xff906EF5),
    ),
  ];

  List<Widget> botones() {
    return this
        .items
        .map((e) => FadeInLeft(
              duration: Duration(
                milliseconds: 750,
              ),
              child: BotonGordo(
                color1: e.color1,
                color2: e.color2,
                titulo: e.texto,
                icon: e.icon,
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: <Widget>[
              IconHeader(
                titulo: "Hola Jovanny",
                subtitulo: "Actualizar a premium",
                icon: FontAwesomeIcons.paperPlane,
                color1: Color(0xff526bf6),
                color2: Color(0xff67acf2),
              ),
              Positioned(
                right: -15,
                top: 30.0,
                child: RawMaterialButton(
                  onPressed: () => {},
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(15.0),
                  child: FaIcon(
                    FontAwesomeIcons.ellipsisV,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 300.0),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [...botones()],
            ),
          ),
        ],
      ),
    );
  }
}
