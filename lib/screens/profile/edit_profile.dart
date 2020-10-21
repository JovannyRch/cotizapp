import 'package:cotizapp/const/conts.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  Size _size;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Editar perfil"),
        backgroundColor: kBaseColor,
      ),
      body: Column(
        children: [
          SizedBox(height: 50.0),
          circleProfileImage(),
          _inputsContainer(),
          SizedBox(height: 30.0),
          FlatButton(
            minWidth: _size.width * 0.6,
            height: 50.0,
            onPressed: () {},
            child: Text(
              "Guardar",
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
            color: kBaseColor,
          ),
        ],
      ),
    );
  }

  Widget _inputsContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          _input("Nombre completo"),
          _input("Correo electrónico"),
          _input("Información adicional"),
          _input("Dirección"),
        ],
      ),
    );
  }

  Widget _input(String label) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
      ),
    );
  }

  Widget circleProfileImage() {
    final circles = Container(
      width: _size.width,
      child: Center(
        child: Container(
          height: 150.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade300,
          ),
          child: Center(
            child: Container(
              height: 130.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade500,
              ),
            ),
          ),
        ),
      ),
    );
    return Container(
      height: _size.height * 0.18,
      width: _size.width,
      child: Stack(
        children: [
          circles,
          Positioned(
              left: (_size.width * 0.5) + 35,
              bottom: 10,
              child: Icon(
                Icons.edit,
                size: 30.0,
              ))
        ],
      ),
    );
  }
}
