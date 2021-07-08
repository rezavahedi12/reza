import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }

}

class HomePageState extends State <HomePage>{

  bool onCheck=true;

  @override
  Widget build(BuildContext context) {

   double width=MediaQuery.of(context).size.width;
   double height=MediaQuery.of(context).size.height;
   
   return SafeArea(
     child: LayoutBuilder(
       builder:(BuildContext context, BoxConstraints constraints){
         if(constraints.maxWidth <720) {
           return MainMobileDesign();
         } else {
           return MainDesktopDesign();
         }
       }
       
      ),
   );
   
  }

}


class MainDesktopDesign extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainDesktopDesignState();
      }
    
    
}
    
class MainDesktopDesignState extends State<MainDesktopDesign>{

  bool onCheck=true;

  @override
  Widget build(BuildContext context) {

   double width=MediaQuery.of(context).size.width;
   double height=MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(


    //  drawer: Drawer(
    //    child: new ListView(
    //      children:[


    //       //  DrawerHeader(child: ),
    //        ListTile(
    //         title: Text('کارآموزی'),
    //         onTap: () {
    //           print('internShip');
    //         },

    //        ),
    //        ListTile(
    //         title: Text('reza dool sanjabi'),
    //         onTap: () {
    //           print('reza dool mppooshi');
    //         },

    //        )
    //      ]
    //    ),),
    //  appBar: AppBar(
    //    title: Text('reza jakesh'),
    //    centerTitle: true,
       
    //    leading: 
       
    //   ),
     
     body: new Stack(
       children: [

       Align(
         child:Container(
           child: Center(
             child: Text(
               'سامانه جامع مدیریت دانشگاه فنی سمنان',
               style: TextStyle(
                 fontFamily: 'Bha',
                 fontSize: 30,
                 color: Colors.black,
               ),
             ),
           ),
           width: width/1.2,
           height: 176,
           decoration: BoxDecoration(
             gradient: LinearGradient(
               colors: [
                 Colors.blue,
                 Colors.white,
               ],
               begin: Alignment.centerLeft,
               end: Alignment.centerRight,

             ),
          
           ),
          
         ),
        alignment: Alignment.topLeft,
      ),
       Align(

       child:Container(
          height: 800,
          color: Color(0xffF2F8F8),
          width: width/1.2,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
         children: [
           
      
          
           Container(
            
             child: Center(
               child: Text(
                 "please login then choose your ph for this lesson!!!!!",
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 20,
                 ),
               ),
             ),
             width: width/1.3,
             height: 67,
             decoration: BoxDecoration(
               color: Colors.redAccent,
               borderRadius: BorderRadius.circular(15),

             ),
           ),
           SizedBox(height: 35,),

           Container(
             child: Center(
               child: Text(
                 "please login then choose your ph for this lesson!!!!!",
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 20,
                 ),
               ),
             ),
             width: width/1.3,
             height: 67,
             decoration: BoxDecoration(
               color: Colors.blueAccent,
               borderRadius: BorderRadius.circular(15),
               
             ),
           ),
            SizedBox(height: 35,),

           Container(
             child: Center(
               child: Text(
                 "please login then choose your ph for this lesson!!!!!",
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 20,
                 ),
               ),
             ),
             width: width/1.3,
             height: 67,
             decoration: BoxDecoration(
               color: Colors.green,
               borderRadius: BorderRadius.circular(15),
               
             ),
           ),
           SizedBox(height: 50),

           Container(
             width: width/6,
             height: 67,
             child: GestureDetector(
               child: Container(
                 child: Center(
               child: Text(
                 onCheck?"!!SAVE CHANGES!!":"THANKS",
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 20,
                 ),
               ),
             ),
             decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20),
                border: Border(
                  bottom: BorderSide(width: 1,color: Colors.red),
                  top: BorderSide(width: 1,color: Colors.red),
                  left: BorderSide(width: 1,color: Colors.red),
                  right: BorderSide(width: 1,color: Colors.red),
                   )
                 ),
               ),
               onTap: (){
                setState(() {
                  if(onCheck){
                    onCheck=false;
                  }else{
                    onCheck=true;
                  }
                }); 
               },
             ),
             
           ),
          
         ],
     ),
       ),
     alignment: Alignment(-1,1),
       ),
       Align(
         child: Container(
           width: width/6,
           child: Column(
             children: [
               SizedBox(height: 10,),
               Image.asset('assets/images/tvuniversity.png'),
              //  Image.network(
              //    'data:image/jpeg;base64,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',
              //    fit: BoxFit.fill,
              //     colorBlendMode: BlendMode.darken,
                                  

              //  ),
               SizedBox(height: 75,),
               Text(" دانشگاه فنی",
               style: TextStyle(
                 fontFamily: 'Bha',
                 fontSize: 20),
                ),
                SizedBox(height:140),

                Container(
                  width: width/6,
                  height: 67,
                  child: GestureDetector(
                    child: Center(
                      child: Text(
                        "Karamouzi",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  
                  ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1,color: Colors.black),
                    left:BorderSide(width: 15,color: Colors.blue),
                  )
                 ),
                ),
                Container(
                  width: width/6,
                  height: 67,
                  child: GestureDetector(
                    child: Center(
                      child: Text(
                        "Projects",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  
                  ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1,color: Colors.black),
                    //left:BorderSide(width: 15,color: Colors.white),
                  )
                 ),
                ),
               
             ],
           ),
         ),
         
         alignment: Alignment.centerRight,
       ),
      ]
     )
   );
  }
}









class MainMobileDesign extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainMobileDesignState();
      }
    
    
}
    
class MainMobileDesignState extends State<MainMobileDesign>{

  bool onCheck=true;

  @override
  Widget build(BuildContext context) {
   double width=MediaQuery.of(context).size.width;
   double height=MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (ctx){

          return IconButton(onPressed:(){
            Scaffold.of(ctx).openDrawer();
          } ,
           icon: Icon(Icons.menu,)
           );
         }
        ),
        title: Center(
          child: Text(
            'سامانه جامع مدیریت دانشگاه فنی سمنان',
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'Bha',
            ),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
                  Colors.blue,
                  Colors.red,
             ]
            )
           ),
          ),
        ),
      
      drawer: Drawer(
       
       child: new ListView(
         
         children: [
           Image.asset('assets/images/tvuniversity.png'),
           SizedBox(height: 45,),

           ListTile(
             title: Text(
               'کارآمومزی',
               style: TextStyle(
                 fontSize: 20,
                 fontFamily: 'Bha',
               ),
             ),
             
           ),
           ListTile(
             title: Text(
               'پروژه',
               style: TextStyle(
                 fontSize: 20,
                 fontFamily: 'Bha',
               ),
             ),
           )
         ],
       ),
     ),
      body: Center(
              child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            
            Container(
              width: width/1.3,
               height: 67,
               child: Center(
                 child: Text(
                   "please login then choose your ph for this lesson!!!!!",
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 20,
                   ),
                 ),
               ),
               decoration: BoxDecoration(
                 color: Colors.red,
                 borderRadius: BorderRadius.circular(15),
                 border: Border(
                   bottom: BorderSide(width: 1,color: Colors.white,),
                   left:  BorderSide(width: 1,color: Colors.white,),
                   right:  BorderSide(width: 1,color: Colors.white,),
                   top:  BorderSide(width: 1,color: Colors.white,),
                 )
               ),
            ),


            SizedBox(height: 20,),
             Container(
              width: width/1.3,
               height: 67,
               child: Center(
                 child: Text(
                   "please login then choose your ph for this lesson!!!!!",
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 20,
                   ),
                 ),
               ),
               decoration: BoxDecoration(
                 color: Colors.green,
                 borderRadius: BorderRadius.circular(15),
                 border: Border(
                   bottom: BorderSide(width: 1,color: Colors.white,),
                   left:  BorderSide(width: 1,color: Colors.white,),
                   right:  BorderSide(width: 1,color: Colors.white,),
                   top:  BorderSide(width: 1,color: Colors.white,),
                 )
               ),
            ),


          SizedBox(height: 20,),
             Container(
              width: width/1.3,
               height: 67,
               child: Center(
                 child: Text(
                   "please login then choose your ph for this lesson!!!!!",
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 20,
                   ),
                 ),
               ),
               decoration: BoxDecoration(
                 color: Colors.purple,
                 borderRadius: BorderRadius.circular(15),
                 border: Border(
                   bottom: BorderSide(width: 1,color: Colors.white,),
                   left:  BorderSide(width: 1,color: Colors.white,),
                   right:  BorderSide(width: 1,color: Colors.white,),
                   top:  BorderSide(width: 1,color: Colors.white,),
                 )
               ),
            ),

            SizedBox(height: 20,),

            Container(
              child: GestureDetector(
                child: Container(
                  width: width/4,
                  height: 67,
                  child: Center(child: Text(
                    onCheck?'Start':'thanks',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Bha",

                    ),
                   ),
                  ),
                  decoration: BoxDecoration(
                     color: Colors.yellow,
                    border: Border(
                     bottom: BorderSide(width: 1,color: Colors.red,),
                     left:  BorderSide(width: 1,color: Colors.red,),
                    right:  BorderSide(width: 1,color: Colors.red,),
                    top:  BorderSide(width: 1,color: Colors.red,),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onTap: (){
                  setState(() {
                    if(onCheck){
                    onCheck=false;
                  }else {
                    onCheck=true;
                  }
                  });
                  
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}