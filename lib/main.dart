import 'package:desings_flutter/pages/basico_page.dart';
import 'package:desings_flutter/pages/botones_page.dart';
import 'package:desings_flutter/pages/scroll_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'Diseños App',
     initialRoute: 'basico',
     routes: {
       'basico': (context) => BasicoPage(),
       'scroll': (context) => ScrollPage(),
       'botones': (context) => BotonesPage()
     }, 
   );
 }
}

