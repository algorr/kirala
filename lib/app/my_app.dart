import 'package:flutter/material.dart';
import 'package:kirala/presentation/resources/route_manager.dart';
import 'package:kirala/presentation/resources/theme_manager.dart';
import 'package:sizer/sizer.dart';

class MyApp extends StatefulWidget {
  //const MyApp({super.key}); // default constructor

  const MyApp._internal(); // private named constructor

  static const MyApp instance =
      MyApp._internal(); // single instance -- singleton

  factory MyApp() => instance; // factory for the class instance

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: getAppTheme(),
          onGenerateRoute: RouteManager.getRoute,
          initialRoute: Routes.splashRoute,
        );
      },
    );
  }
}
