import 'package:flutter/material.dart';

class NavBarSuperior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Image.asset(
          "assets/imgs/netflix_icon_161073.png",
          width: 50.0,
        ),
        Text(
          "Programa",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        Text(
          "Películas",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        Text(
          "Mi Lista",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ],
    );
  }
}
