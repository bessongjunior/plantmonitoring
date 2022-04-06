// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';


void main() {
 // runApp(const MyApp());
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(goToPage: const WelcomePage(), duration: 4)));

}

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Welcome');
  }
}

class SplashPage extends StatelessWidget {
  int duration = 0;

  Widget goToPage;

  SplashPage({Key? key, required this.duration, required this.goToPage}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: duration), ()=> Navigator.push(
        context, MaterialPageRoute(builder: (context) => goToPage)
    ));

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
            alignment: Alignment.center,
            color: Colors.lightGreen,
            child:  const Icon(Icons.waves_sharp, color: Colors.white, size: 100,)
        )
    );
  }
}
