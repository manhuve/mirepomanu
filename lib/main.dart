import 'package:flutter/material.dart';
import 'card_user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: ListView(
          children: [
            UserCard("asset/chem1.jpg", "Amanda Murphy", "Experiencia 04 Años"),
            UserCard("asset/user3.jpg", "Menganito Perez", "Experiencia 01 Años"),
            UserCard("asset/user4.jpg", "Pablo Lopez", "Experiencia 09 Años"),
            UserCard("asset/chem1.jpg", "Roberto Carlos", "Experiencia 03 Años"),
            UserCard("asset/chem1.jpg", "Amanda Murphy", "Experiencia 04 Años"),
            UserCard("asset/chem1.jpg", "Amanda Murphy", "Experiencia 04 Años"),
            UserCard("asset/chem1.jpg", "Amanda Murphy", "Experiencia 04 Años"),
            UserCard("asset/chem1.jpg", "Amanda Murphy", "Experiencia 04 Años"),
            UserCard("asset/chem1.jpg", "Amanda Murphy", "Experiencia 04 Años"),
          ]
        )
      ),
    );
  }
}

