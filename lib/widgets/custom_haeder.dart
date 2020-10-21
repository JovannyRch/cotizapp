import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  Function onPressed;
  String title;
  bool center;
  Color titleColor;

  CustomHeader(
      {this.onPressed = null,
      this.title = "",
      this.center = false,
      this.titleColor = Colors.black});
  Size _size;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    var iconButton = IconButton(
      icon: Image.asset("assets/icons/menu.png"),
      onPressed: onPressed,
    );
    return Positioned(
        left: 0,
        top: 25,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20.0),
              width: _size.width * 1.0,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 22.0,
                        color: titleColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
            iconButton,
          ],
        ));
  }
}
