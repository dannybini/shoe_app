import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'My Awosem app',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Devloped by your company',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(child: Container(),),
            Text(
              'Copyright © 2023 Your Company',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),

    );
  }
}
