import 'dart:convert';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_package/model/kabupaten.dart';
import 'package:flutter_package/model/provinsi.dart';
import 'package:http/http.dart' as http;

class LatihanPackage extends StatelessWidget {
  int? idProvinsi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            DropdownSearch<Provinsi>(
              mode: Mode.MENU,
              dropdownBuilder: (context, selectedItem) =>
                  Text(selectedItem?.nama ?? "Belum Ada Data"),
              onFind: (text) async {
                var respone = await http.get(Uri.parse(
                    'https://dev.farizdotid.com/api/daerahindonesia/provinsi'));
                if (respone.statusCode != 200) {
                  return [];
                }
                List provinsiS = (json.decode(respone.body)
                    as Map<String, dynamic>)["provinsi"];
                List<Provinsi> namesProvinsi = [];

                provinsiS.forEach((element) {
                  namesProvinsi
                      .add(Provinsi(id: element["id"], nama: element["nama"]));
                });
                return namesProvinsi;
              },
              popupItemBuilder: (context, item, isSelected) => ListTile(
                title: Text(item.nama),
              ),
              onChanged: (value) => idProvinsi = value?.id,
            ),
            SizedBox(height: 20),
            DropdownSearch<Kabupaten>(
              mode: Mode.MENU,
              dropdownBuilder: (context, selectedItem) =>
                  Text(selectedItem?.nama ?? "Belum Ada Data"),
              onFind: (text) async {
                var respone = await http.get(Uri.parse(
                    'https://dev.farizdotid.com/api/daerahindonesia/kota?id_provinsi=$idProvinsi'));

                if (respone.statusCode != 200) {
                  return [];
                }
                List kabupaten = (json.decode(respone.body)
                    as Map<String, dynamic>)["kota_kabupaten"];
                List<Kabupaten> namesKabupaten = [];

                kabupaten.forEach((element) {
                  namesKabupaten.add(Kabupaten(
                      id: element["id"],
                      idProvinsi: element["id_provinsi"],
                      nama: element["nama"]));
                });
                print(respone.body);
                return namesKabupaten;
              },
              popupItemBuilder: (context, item, isSelected) => ListTile(
                title: Text(item.nama),
              ),
              onChanged: (value) => print(value?.id),
            ),
          ],
        ),
      ),
    );
  }
}
