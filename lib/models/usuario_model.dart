import 'dart:convert';

import 'package:cotizapp/services/api.dart';

List<Usuario> usuarioFromJson(String str) =>
    List<Usuario>.from(json.decode(str).map((x) => Usuario.fromJson(x)));

String usuarioToJson(List<Usuario> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Usuario {
  Usuario({
    this.id = "",
    this.correo = "",
    this.apellidoMaterno = "",
    this.apellidoPaterno = "",
    this.nombre = "",
    this.tokenPush = "",
  });

  Api api = new Api('Usuarios');

  String id;
  String correo;
  String apellidoPaterno;
  String apellidoMaterno;
  String nombre;
  String tokenPush;

  factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
        id: json["id"],
        correo: json["correo"],
        apellidoMaterno: json["apellidoMaterno"],
        apellidoPaterno: json["apellidoPaterno"],
        nombre: json["nombre"],
        tokenPush: json["tokenPush"],
      );

  factory Usuario.fromMap(Map<String, dynamic> json, String id) => Usuario(
      id: id,
      correo: json["correo"],
      apellidoMaterno: json["apellidoMaterno"],
      apellidoPaterno: json["apellidoPaterno"],
      nombre: json["nombre"],
      tokenPush: json["tokenPush"]);

  Map<String, dynamic> toJson() => {
        "correo": correo,
        "apellidoMaterno": apellidoMaterno,
        "apellidoPaterno": apellidoPaterno,
        "tokenPush": tokenPush,
      };

  Future save(String id) async {
    await api.addDocumentWithId(id, this.toJson());
  }

  Future<Usuario> fetchData(String id) async {
    final resp = await api.getDocumentById(id);

    print(resp);
    return Usuario.fromJson(resp.data());
  }
}
