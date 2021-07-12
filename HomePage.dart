import 'package:flutter/material.dart';
import 'MobileDesign/MainScreen.dart';
import 'DesktopDesign/Main Screen.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
      }
    
    }
    
 class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
       child: LayoutBuilder(
        builder: (BuildContext context,BoxConstraints constraints){
                if(constraints.maxWidth<720){
                  return MainMobileDesign();
                }else{
                  return MainDesktopDesign();
                }
        } ,   
  
      ),
     );
    }
}