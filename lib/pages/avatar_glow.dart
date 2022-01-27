import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

class AvatarGlowing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      body: Center(
        child: Column(
          children: [
            Center(
              child: AvatarGlow(
                glowColor: Colors.red,
                endRadius: 150.0,
                child: Material(
                  // Replace this child with your own
                  elevation: 8.0,
                  shape: CircleBorder(),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[100],
                    backgroundImage:
                        NetworkImage('https://picsum.photos/200/300'),
                    radius: 75.0,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    iconSize: 40,
                    onPressed: () {},
                    icon: Icon(
                      Icons.phone,
                      color: Colors.green,
                    )),
                IconButton(
                    iconSize: 40,
                    onPressed: () {},
                    icon: Icon(
                      Icons.phone_disabled_rounded,
                      color: Colors.red,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
