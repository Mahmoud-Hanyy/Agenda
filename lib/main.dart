import 'package:agenda/Constants/color.dart';
import 'package:agenda/Screens/home_page.dart';
import 'package:agenda/Screens/profile_page.dart';
import 'package:agenda/Screens/to_Do_page.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


void main() => runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BottomNavBar())
);

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int page_index = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final Home Homesite = const Home();
  final Profile Profilesite = const Profile();
  final ToDo ToDosite =  ToDo();

  Widget _showPage = const Home();
  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return Homesite;
      case 1:
        return ToDosite;
      case 2:
        return Profilesite;
      default:
        return const Center(
          child: Text(
            'No page found by page chooser.',
            style: TextStyle(fontSize: 30),
          ),
        );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: const <Widget>[
            Icon(Icons.home, size: 30,color: Colors.white,),
            Icon(Icons.list, size: 30,color: Colors.white,),
            Icon(Icons.person, size: 30,color: Colors.white,),
          ],
          color: bg,
          buttonBackgroundColor: bg,
          backgroundColor: tdBGColor,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
          onTap: (int tappedIndex) {
            setState(() {
              _showPage = _pageChooser(tappedIndex);
            });
          },
          letIndexChange: (index) => true,
        ),
        body: Container(
          color: tdBGColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _showPage,
            ],
            ),
          ),
        )
    );
  }
}
