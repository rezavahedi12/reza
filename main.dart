import 'package:flutter/material.dart';
import 'homePage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home:HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}