import 'package:flutter/material.dart';

//import 'package:components_app/src/pages/home_temp.dart';
import 'package:components_app/src/pages/alert_page.dart';
import 'package:components_app/src/routes/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      //home: HomePageTemp(),
      //home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (BuildContext context) => AlertPage());
      },
    );
  }
}