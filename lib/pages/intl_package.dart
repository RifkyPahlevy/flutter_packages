import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class IntlPackage extends StatelessWidget {
  var faker = Faker();
  String tanggal =
      DateTime.now().toIso8601String(); //ini untuk mengubah tipe Date ke String

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage:
                NetworkImage('https://picsum.photos/id/${index + 238}/200/300'),
          ),
          title: Text('${faker.person.name()}'),
          subtitle: Text(
              '${DateFormat.yMMMMd().add_Hm().format(DateTime.now())}'), //mengatur bentuk time di screen

          //       Text('${DateTime.parse(tanggal)}'), //ini mengubah string ke date
        ),
      ),
    );
  }
}
