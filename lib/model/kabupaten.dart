import 'dart:convert';

Kabupaten kabupatenFromJson(String str) => Kabupaten.fromJson(json.decode(str));

String kabupatenToJson(Kabupaten data) => json.encode(data.toJson());

class Kabupaten {
  Kabupaten({
    required this.id,
    required this.idProvinsi,
    required this.nama,
  });

  int id;
  String idProvinsi;
  String nama;

  factory Kabupaten.fromJson(Map<String, dynamic> json) => Kabupaten(
        id: json["id"],
        idProvinsi: json["id_provinsi"],
        nama: json["nama"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "id_provinsi": idProvinsi,
        "nama": nama,
      };
}
