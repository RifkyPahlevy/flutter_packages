import 'package:flutter/material.dart';
import 'package:flutter_package/pages/home_page.dart';
import 'package:flutter_package/pages/login.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionScreenPackages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Title of first page",
          body:
              "Here you can write the description of the page, to explain someting...",
          image: Center(
            child:
                Image.network("https://picsum.photos/200/300", height: 175.0),
          ),
        ),
        PageViewModel(
          title: "Title of first page",
          body:
              "Here you can write the description of the page, to explain someting...",
          image: Center(
            child:
                Image.network("https://picsum.photos/300/300", height: 175.0),
          ),
        )
      ],
      showNextButton: true,
      next: Text('Next Gan'),
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: () {
        Navigator.pushReplacement(
            // push replacement adalah pindah screen yg gabisa balik lagi
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ));
      },
    );
  }
}
