import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class PackageFaker extends StatelessWidget {
  var faker = Faker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 70),
          itemCount: 20,
          itemBuilder: (context, index) => Card(
              elevation: 7,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://picsum.photos/id/${index + 277}/200/300'))),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Nama : ${faker.person.name()}'),
                        Text('Email : ${faker.internet.email()}'),
                        Text('No Telepon : ${faker.phoneNumber.us()}'),
                        Text('Alamat : ${faker.address.streetName()}'),
                      ],
                    )
                  ],
                ),
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
              ))),
    );
  }
}
