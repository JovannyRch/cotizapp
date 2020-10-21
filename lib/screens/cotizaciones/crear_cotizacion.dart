import 'package:cotizapp/const/conts.dart';
import 'package:flutter/material.dart';

class CrearCotizacion extends StatefulWidget {
  CrearCotizacion({Key key}) : super(key: key);

  @override
  _CrearCotizacionState createState() => _CrearCotizacionState();
}

class _CrearCotizacionState extends State<CrearCotizacion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBaseColor,
        title: Text("Crear cotización"),
        centerTitle: true,
        actions: [
          Container(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.notifications,
            ),
          )
        ],
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _title("Detalles"),
          TextField(
            decoration: InputDecoration(labelText: "Título *"),
          ),
          TextField(
            minLines: 3,
            maxLines: 5,
            decoration: InputDecoration(labelText: "Descripción"),
          ),
          TextField(
            decoration: InputDecoration(labelText: "Duración esperada"),
          ),
        ],
      ),
    );
  }

  Widget _title(String text) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 25.0,
      ),
    );
  }
}
