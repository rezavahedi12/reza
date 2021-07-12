import 'package:flutter/material.dart';
import 'package:tvuniversity/MobileDesign/MainScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardMobile extends StatefulWidget{

  final String userName;
  DashboardMobile({required this.userName});
  @override
  State<StatefulWidget> createState() {
    return DashboardMobileState();
  }

}


class DashboardMobileState extends State<DashboardMobile>{

  var userName;

  _getUserName() async {

    SharedPreferences prefs = await SharedPreferences.getInstance();
    userName = prefs.getString('username');

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _getUserName();
    
  }

  @override
  Widget build(BuildContext context) {
      double width=MediaQuery.of(context).size.width;
      double height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF2F8F8),
      // drawer: Drawer(
      //   child: ListView(
      //       children: [
      //         ListTile(
      //           title: Text(
                  
      //           ),
      //         ),

      //       ],
      //   ),

      
      // ),
      appBar: AppBar(
        flexibleSpace: Container(
          child: Center(
            child: Text(
              'سامانه جامع مدیریت دانشگاه فنی سمنان',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Bha',
                
              ),
            ),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.greenAccent,

              ],
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
            ),
            
          ),
        ),
      ),



      body: Container(
        child: Column(
         children: [
           SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.only(right: 8.0,left: 8.0),
             child: Row(
               
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Center(
                   child: Container(
                     width: width/1.03,
                     height: 85,
                     decoration: BoxDecoration(
                       border: Border(
                         bottom: BorderSide(width: 1,color: Colors.black),
                         top: BorderSide(width: 1,color: Colors.black),
                         left: BorderSide(width: 1,color: Colors.black),
                         right: BorderSide(width: 1,color: Colors.black),
                         
                       ),
                       borderRadius: BorderRadius.circular(15),
                       color: Colors.blue[50],
                     ),
                     
                child:Padding(
                    padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                    Container(
                      width: width/7,
                      height: 80,
                      child: Image.asset('assets/images/user-1633249_1280-768x749.png'),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                    ),
                               
                    Container(
                      child: Text(
                        widget.userName,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
               ]
              ),
                )
             ),
                 )
            ],

          ),

           ),

           //profile
           SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.only(left: 8.0, right: 8.0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Column(
                  
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(

                        child: Column(
                          children: [
                                Container(
                                child: Column(
                                    children: [
                                      Container(
                                        width: width/2.5,
                                        height: 200,
                                        
                                        child:Center(
                                          
                                          child: Image.asset('assets/images/unnamed.png',)
                                        ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                                      ),

                                      alignment: Alignment.topLeft,
                                      ),

                                      SizedBox(height: 3,),

                                      Container(
                                        width: width/2.5,
                                        height: 30,
                                        child: Center(
                                          child: Text(
                                            'پیشنهادات',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'Persian'
                                            ),
                                          ),
                                          
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                                        ),
                                ),

                              ],
                            ),
                          ),                           
                    SizedBox(height: 15,),

                            Container(
                              width: width/2.5,
                              height: 300,
                              
                              child:Center(
                                
                                child: Image.asset('assets/images/1.png',width: width/2.5,height: 300,)
                              ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                            ),

                            alignment: Alignment.topLeft,
                            ),

                            SizedBox(height: 3,),

                            Container(
                              width: width/2.5,
                              height: 30,
                              child: Center(
                                child: Text(
                                  'پروژه',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Persian'
                                  ),
                                ),
                                
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),


                  
                  SizedBox(height: 50,),
                  ],
                )
                ,
                Column(
                  
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(

                        child: Column(
                          children: [
                            Container(
                              width: width/2.5,
                              height: 300,
                              
                              child:Center(
                                
                                child: Image.asset('assets/images/5mf8wghk6oen.png',width: width/2.5,height: 300,)
                              ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                            ),

                            alignment: Alignment.topLeft,
                            ),

                            SizedBox(height: 3,),

                            Container(
                              width: width/2.5,
                              height: 30,
                              child: Center(
                                child: Text(
                                  'شروع کارآموزی',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Persian'
                                  ),
                                ),
                                
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),


                  Container(
                     child: Column(
                        children: [
                          Container(
                            width: width/2.5,
                            height: 200,
                            
                            child:Center(
                              
                              child: Image.asset('assets/images/Group 7144.png',)
                            ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                          ),

                          alignment: Alignment.topLeft,
                          ),

                          SizedBox(height: 3,),

                          Container(
                            width: width/2.5,
                            height: 30,
                            child: Center(
                              child: Text(
                                'ارتباط با اساتید',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Persian'
                                ),
                              ),
                              
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                            ),
                          ),

                        ],
                      ),
                    ),
                  SizedBox(height: 50,),
                  ],
                )
              ],
          ),
           ),
         ]
        ),
                  
      ),
    );
  }

}
