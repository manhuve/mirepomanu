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
              accountName: new Text('Bugha'),
              accountEmail: new Text('Kyle Giersdorf'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new AssetImage('asset/bugha.png'),
              ),
            )
          ],
        ),
      ),
      body: Stack (
          children: [
            ListView(
              padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
            children: [
              UserCard("asset/skin01.jpg", "Ultima Knight", "2000 v-bucks"),
              UserCard("asset/skin02.jpg", "Eternal Voyager", "1500 v-bucks"),
              UserCard("asset/skin03.png", "Bubble Bomber", "1000 v-bucks"),
              UserCard("asset/skin04.png", "Lizzie", "2000 v-bucks"),
              UserCard("asset/skin05.jpg", "Skull trooper", "1500 v-bucks"),
              UserCard("asset/skin06.png", "Valentine", "2000 v-bucks"),
              UserCard("asset/skin07.jpg", "Bananin", "1500 v-bucks"),
              UserCard("asset/skin08.jpg", "Travis Scott", "2000 v-bucks"),
              UserCard("asset/skin09.png", "Baby Beli", "Limited edition"),
            ]
            ),
            Container(
              height: 150,
              width: 500,
              decoration: BoxDecoration (
                image: DecorationImage(
                  image: AssetImage('asset/barrita2.png'),
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
