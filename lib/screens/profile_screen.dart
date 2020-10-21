import 'package:cotizapp/const/conts.dart';
import 'package:cotizapp/screens/profile/edit_profile.dart';
import 'package:cotizapp/widgets/custom_haeder.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  Size _size;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          _body(context),
          CustomHeader(
            title: "Perfil",
            titleColor: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _header() {
    var container = Container(
      height: _size.height * 0.30,
      decoration: BoxDecoration(
        color: kBaseColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.0),
          bottomRight: Radius.circular(50.0),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 40.0,
            child: Container(
              width: _size.width,
              child: Center(
                child: FaIcon(
                  FontAwesomeIcons.infoCircle,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
    return container;
  }

  Widget _body(BuildContext context) {
    return Column(
      children: [
        _header(),
        Container(
          width: _size.width,
          margin: EdgeInsets.only(top: 10.0),
          child: Column(
            children: [
              Text(
                "gmadrid@iqneting.com.mx",
                style: kTitleText,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Información premium",
                style: kSubtitleText,
              ),
            ],
          ),
        ),
        editButton(context),
        SizedBox(height: 20.0),
        _itemInfo("Nombre", "Nombre", Icons.person),
        _itemInfo("Correo", "jovannyrc@gmail.com", Icons.mail),
        _itemInfo("Miembro desde", "10 de Junio del 2020", Icons.date_range),
      ],
    );
  }

  Widget _itemInfo(String key, String value, IconData icon) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      width: _size.width,
      child: Column(
        children: [
          Row(
            children: [
              Icon(icon),
              SizedBox(width: 20.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    key,
                    style: kTitleText.copyWith(
                      fontSize: 15.0,
                      color: kBaseColor.withOpacity(0.7),
                    ),
                  ),
                  Text(
                    value,
                    style: kTitleText.copyWith(
                      fontSize: 21.0,
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 10.0),
          Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }

  Widget editButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      width: _size.width,
      child: Center(
        child: Container(
          width: _size.width * 0.5,
          height: 40.0,
          decoration: BoxDecoration(
            color: kBaseColor,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditProfile()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Editar perfil",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
