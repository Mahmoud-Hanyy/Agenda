import 'package:agenda/Constants/color.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class Profile extends StatelessWidget{
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 300,
          width: 300,
          margin: const EdgeInsets.only(top: 100),
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('lib/images/profile.png'),
                fit: BoxFit.fill,
              )
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 100, top: 20),
          height: 30,
          child: const Text(
            'Samual Smith',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: bg,
            ),
          ),
        ),
        Center(
          child: ElevatedButton(
            onPressed:(){
              Share.share('Hello my friends , I am using Agenda App to manage my time and tasks. You can download it from here :https//agenda.com',
                  subject: 'Look what I made!');
        },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: bg,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            minimumSize: const Size(200, 50),
          ), child: const Text('Share Profile')
        ),
        ),
      ],
    );
  }
}