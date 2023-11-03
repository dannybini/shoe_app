import 'package:flutter/material.dart';

import 'Home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'assets/images/nikeLogo.png',
                  height: 240,
                ),
              ),
              const SizedBox(height: 48),

              Text(
                'Just Do It',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              //title

              const SizedBox(height: 24),

              //sub title
              Text(
                'Brand new sneakers and custom kicks made with premium quality',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 48),
              //start now button
              GestureDetector(
                onTap: ()=> Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>HomePage(),
                    )) ,
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[900],borderRadius: BorderRadius.circular(12)),
                  padding: const EdgeInsets.all(25.0),
                  child: const Center(
                      child: const Text(
                    'Shop now',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
