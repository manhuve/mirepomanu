import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  String pathImage;
  String name;
  String details;

  UserCard(this.pathImage, this.name, this.details);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final userInfo = Container(
      margin: EdgeInsets.only(
          left: 20.0,
          right:20.0,
      ),

      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            color: Color(0xFFa3a5a7)
        ),

      ),

    );

    final userName = Container(
      margin: EdgeInsets.only(
          left: 20.0,
          top: 40.0
      ),

      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 17.0
        ),

      ),

    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
          top: 0.0,
          left: 20.0
      ),

      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage)
          )
      ),

    );

    final icono = Container (
      margin: EdgeInsets.only(
          top: 20,
          left: 30
      ),
        height: 40.0,
        width: 40.0,
        child: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: const Icon(Icons.mail),
          backgroundColor: Colors.red,
        ),
    );



    return Container(
      margin: EdgeInsets.only(
        top: 0.0,
        left:20.0
      ),
        //width: 80.0,
        height: 120.0,
      child: Row(
      children: [
        photo,
        userDetails,
        icono
    ],
    )

    );
  }

}