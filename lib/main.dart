import 'package:flutter/material.dart';

import 'InputWrapper.dart';
import 'LoginPage.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    if(InputWrapper.validator==true){

      return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home:HomePage(),
        debugShowCheckedModeBanner: false,
      );
    }
    else{
      return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LoginPage(),
        debugShowCheckedModeBanner: false,
      );
    }

  }
}


