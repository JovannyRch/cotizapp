import 'package:animate_do/animate_do.dart';
import 'package:cotizapp/screens/cotizaciones/crear_cotizacion.dart';
import 'package:cotizapp/widgets/fat_button.dart';
import 'package:cotizapp/widgets/headers_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemBoton {
  final IconData icon;
  final String texto;
  final Color color1;
  final Color color2;
  final Function onTap;

  ItemBoton(this.icon, this.texto, this.color1, this.color2, this.onTap);
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BuildContext _context;

  List<ItemBoton> items = <ItemBoton>[];

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
                onTap: () {
                  e.onTap();
                },
              ),
            ))
        .toList();
  }

  @override
  void initState() {
    this.items = [
      new ItemBoton(
        FontAwesomeIcons.toolbox,
        'Crea tu primera cotización',
        Color(0xff6989F5),
        Color(0xff906EF5),
        () {
          Navigator.push(
            _context,
            MaterialPageRoute(builder: (context) => CrearCotizacion()),
          );
        },
      ),
      new ItemBoton(
        FontAwesomeIcons.plus,
        'Crea tu primer proyecto',
        Color(0xff66A9F2),
        Color(0xff536CF6),
        () {},
      ),
      new ItemBoton(
        FontAwesomeIcons.user,
        'Revisa tu perfil',
        Color(0xffF2D572),
        Color(0xffE06AA3),
        () {
          Navigator.push(
            _context,
            MaterialPageRoute(builder: (context) => CrearCotizacion()),
          );
        },
      ),
      new ItemBoton(
        FontAwesomeIcons.biking,
        'Visita tu perfil en línea',
        Color(0xff317183),
        Color(0xff46997D),
        () {},
      ),
      new ItemBoton(
        FontAwesomeIcons.cashRegister,
        'Coonce más sobre pagos en línea',
        Color(0xff6989F5),
        Color(0xff906EF5),
        () {},
      )
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _context = context;
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
