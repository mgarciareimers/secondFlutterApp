import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

//import 'package:components_app/src/pages/home_temp_page.dart';
import 'package:components_app/src/pages/alert_page.dart';
import 'package:components_app/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Components',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
        );
      },
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('es', 'ES'),
      ],
    );
  }
}