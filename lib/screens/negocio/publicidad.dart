import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Publicidad extends StatelessWidget {
  final List<String> imgList = [
    'https://img.freepik.com/vector-gratis/banner-mejor-oferta-ventas-estilo-origami-cintas_23-2148417074.jpg?size=626&ext=jpg',
    'https://img.freepik.com/vector-gratis/banner-mejor-oferta-ventas-estilo-origami-cintas_23-2148417074.jpg?size=626&ext=jpg',
    'https://img.freepik.com/vector-gratis/banner-mejor-oferta-ventas-estilo-origami-cintas_23-2148417074.jpg?size=626&ext=jpg',
    'https://img.freepik.com/vector-gratis/banner-mejor-oferta-ventas-estilo-origami-cintas_23-2148417074.jpg?size=626&ext=jpg',
    'https://img.freepik.com/vector-gratis/banner-mejor-oferta-ventas-estilo-origami-cintas_23-2148417074.jpg?size=626&ext=jpg',
    'https://img.freepik.com/vector-gratis/banner-mejor-oferta-ventas-estilo-origami-cintas_23-2148417074.jpg?size=626&ext=jpg',
  ];
  List<Widget> imageSliders = [];

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    imageSliders = imgList
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.network(item, fit: BoxFit.cover, width: 1000.0),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                          ),
                        ),
                      ],
                    )),
              ),
            ))
        .toList();
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
      ),
      items: imageSliders,
    );
  }
}
