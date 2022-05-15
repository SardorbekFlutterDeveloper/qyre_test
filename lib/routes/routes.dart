import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qyre_test/views/home_page.dart';
import 'package:qyre_test/widget/bottomNavBar.dart';

class  MyRouter {
   Route? routeGenerate(RouteSettings settings) {
    var args = settings.arguments;

    switch (settings.name) {
     
       case "/":
        return MaterialPageRoute(
          builder: (_) =>  BottomNavBar(),
        );

      
    }
  }
}
