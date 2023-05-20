import 'package:flutter/material.dart';
import '../Constants/color.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 500,
          child: const Image(
            image: AssetImage("lib/images/home.png"),
          ),
        ),
        Container(
          height: 30,
          child: const Text(
            '" New Day = New Chance for Success "',
            style: TextStyle(
              fontSize: 20,
              color: bg,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 70,
          margin: const EdgeInsets.all(10),
          child: const Text(
            'Welcome to Agenda App , where you can record your daily tasks and manage your time.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: bg,
            ),
          ),
        ),
      ],
    );
}
}