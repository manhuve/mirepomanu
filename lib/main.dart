import 'package:flutter/material.dart';
import 'card_user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new MyHomePage(),
    );

  }
}
class MyHomePage extends StatefulWidget{

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      /*appBar: new AppBar(
          title: new Text('Menu')
      ),*/
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Liz'),
              accountEmail: new Text('Liz.js@hotmail.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new AssetImage('asset/lizbeth.jpg'),
              ),
            )
          ],
        ),
      ),
      body: Stack (
          children: [
            ListView(
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
            ),
            Container(
              height: 150.0,
              width: 900.0,
              decoration: BoxDecoration (
                image: DecorationImage(
                  image: AssetImage('asset/Back_liz.jpg'),
                  fit: BoxFit.cover,
                  alignment: Alignment.topRight,
                ),
              )
            ),
           ]
        ),

    );
  }
}
/*
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
            Image(
              image: AssetImage('Back_liz.jpg'),
            ),
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
*/
