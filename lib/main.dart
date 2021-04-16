import 'package:flutter/material.dart';
import 'package:tataboq_game/home_screen.dart';

main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tataboq App",
      home: HomeScreen(),
    );
  }
}