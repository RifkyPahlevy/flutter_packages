import 'package:flutter/material.dart';
import 'package:flutter_package/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController passC = TextEditingController();

  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: "Email"),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: passC,
            textInputAction: TextInputAction.done, // agar next textfield
            autocorrect: false,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.vpn_key),
              suffixIcon: IconButton(
                  onPressed: () {
                    if (isHidden == true) {
                      isHidden = false;
                    } else {
                      isHidden = true;
                    }
                    print("Ditekan");
                    setState(() {});
                  },
                  icon: Icon(Icons.remove_red_eye)),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              labelText: "Password",
            ),
            obscureText: isHidden, //ini widget agar input "*******"
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
              },
              child: Text('LOGIN'))
        ],
      ),
    );
  }
}
