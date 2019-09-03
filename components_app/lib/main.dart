import 'package:flutter/material.dart';

//import 'package:components_app/src/pages/home_temp.dart';
import 'package:components_app/src/pages/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      //home: HomePageTemp(),
      home: HomePage(),
    );
  }
}