import 'dart:convert';

Provinsi provinsiFromJson(String str) => Provinsi.fromJson(json.decode(str));

String provinsiToJson(Provinsi data) => json.encode(data.toJson());

class Provinsi {
  Provinsi({
    required this.id,
    required this.nama,
  });

  int id;
  String nama;

  factory Provinsi.fromJson(Map<String, dynamic> json) => Provinsi(
        id: json["id"],
        nama: json["nama"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
      };
}
