import 'dart:async';

import 'package:flutter/material.dart';
import 'package:projet_foot/SecondePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    //dans 3 il se redirige vers la second page
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SecondPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Bienvenue sur mon application de foot',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                letterSpacing: 2.0,
              ),
              textAlign: TextAlign.center,
            ),
            // Image(image: AssetImage('assets/Illustration-football-App.jpg'))
            CircleAvatar(
              backgroundColor: Colors.lightGreen,
              maxRadius: 50,
              child: Icon(
                Icons.sports_soccer,
                color: Colors.green,
                size: 70,
              ),
            ),
            CircularProgressIndicator(
              color: Colors.white,
            )
            // ElevatedButton.icon(
            //   style: ElevatedButton.styleFrom(
            //     padding: EdgeInsets.all(10),
            //     primary: Colors.green.shade400,
            //   ),
            //   onPressed: () {},
            //   label: Text('Commencer'),
            //   icon: Icon(Icons.forward),
            // ),
          ],
        ),
      ),
    );
  }
}
