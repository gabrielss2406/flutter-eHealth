import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'HomePage.dart';
import 'LoginPage.dart';
import 'Resultado.dart';

class AppWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.grey),
      initialRoute: '/',
      routes: {
        '/':(context)=> LoginPage(),
        '/home':(context)=> HomePage(),
        '/resultado':(context)=> Resultado(),
      },
    );

  } // Build
} // Stateless