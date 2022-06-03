import 'package:flutter/material.dart';
import 'package:memento/presentaion/home/homscreen.dart';
import 'package:memento/presentaion/resources/routesmanager.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutGenerator.getRoute,
      home: HomeScreen(),
    );
  }
}
