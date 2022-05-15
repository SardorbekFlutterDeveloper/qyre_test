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
      
      body: Column(),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        unselectedFontSize: 12,
        backgroundColor: Color(0xff111111),
        type: BottomNavigationBarType.fixed,
        
        // currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: 
                  SvgPicture.asset(
                      "assets/svg/home.svg",
                       color: Colors.white,
                  ),
                
          ),
          BottomNavigationBarItem(
            label: "",
            icon: 
                  SvgPicture.asset(
                      "assets/svg/teng.svg", color: Colors.white,
                  )
                
          ),
          BottomNavigationBarItem(
            label: "",
            icon: 
                  SvgPicture.asset(
                      "assets/images/not.svg",
                       color: Colors.white,
                  )
                
          ),
         
        ],
      ),
    );
  }
}