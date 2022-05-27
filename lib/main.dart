import 'package:flutter/material.dart';
import 'package:qyre_test/routes/routes.dart';

import 'package:qyre_test/views/home_page.dart';
import 'package:qyre_test/views/test.dart';
import 'package:qyre_test/widget/bottomNavBar.dart';

void main() {
  runApp( MyApp(),);
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
   
   final MyRouter _forRoute = MyRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qyre Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      // home: HomePage(),

      initialRoute:  "/",
      onGenerateRoute: _forRoute.routeGenerate,

    );
  }
}
