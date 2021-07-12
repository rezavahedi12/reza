import 'package:flutter/material.dart';
import 'package:tvuniversity/MobileDesign/MainScreen.dart';
import 'HomePage.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  
   return MaterialApp(
     home: Directionality(textDirection: TextDirection.rtl, child: MainMobileDesign()),
     debugShowCheckedModeBanner: false,
   );
  }
}