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
        body: UserCard("asset/chem1.jpg", "khemtz", "pruebas de usuario")
      ),
    );
  }
}

