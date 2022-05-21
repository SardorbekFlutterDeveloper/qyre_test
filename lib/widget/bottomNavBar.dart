import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qyre_test/core/constants/color_constats.dart';
import 'package:qyre_test/views/home_page.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<BottomNavBar> {



  final List<Widget> _pages = [
    HomePage(),
  ];

 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _pages[0],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        unselectedFontSize: 12,
        backgroundColor: Color(0xff111111),
        type: BottomNavigationBarType.shifting,

        // currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color(0xff111111),
            label: "",
            icon: Image.asset(
              "assets/images/home.png",
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
              backgroundColor: Color(0xff111111),
              label: "",
              icon: Image.asset(
                "assets/images/teng.png",
                color: Colors.white,
              )),
          BottomNavigationBarItem(
              backgroundColor: Color(0xff111111),
              label: "",
              icon: Image.asset(
                "assets/images/not.png",
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}