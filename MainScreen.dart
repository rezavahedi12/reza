import 'package:flutter/material.dart';
import 'package:tvuniversity/MobileDesign/DashboardMobile.dart';
import 'package:shared_preferences/shared_preferences.dart';


class MainMobileDesign extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MainMobileDesignState();
      }
    
    }
    
 class MainMobileDesignState extends State<MainMobileDesign> {
   bool onClick=false;
   final _formKey = GlobalKey<FormState>();
   String userName = '';
   String pass = '';

  //  _saveForm() {

  //    final isValid = _formKey.currentState!.validate();
  //    if(!isValid) {
  //      _formKey.currentState!.save();
  //    }else{
  //      return ;
  //    }
  //  }
  _saveForm() async{
    final isValid=_formKey.currentState!.validate();
    if(isValid){
       _formKey.currentState!.save();
       print(userName);
       
                                       

    }else{
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
      double width=MediaQuery.of(context).size.width;
      double height=MediaQuery.of(context).size.height;

    return Scaffold(
      
          body: 
          Container(
            
            decoration:  BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/background.png"),
                        
                        fit: BoxFit.cover)
                        ), 
            
            child:Center(
              child: Container(
                
                width: width/1.2,
                height: height/1.3,
                decoration: BoxDecoration(
                  color: Color(0xffB0D0FE),
                  borderRadius: BorderRadius.circular(15),

                ),
                child: Column(
                  children: [
                      SizedBox(height: 10,),
                      Image.asset('assets/images/tvuniversity.png',width: 100,height: 100,),

                      SizedBox(height: 15,),

                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/icons8-student-male-64.png',width: 40,height: 40,),
                            SizedBox(width: 8,),
                            Text('ورود دانشجو',style: TextStyle(
                                fontFamily: 'Persian',

                             ),
                            ),
                          ],
                        ),
                        
                      ),

                      SizedBox(height: 70,),

                      Container(
                        child: Form(
                              key: _formKey, 
                              child: Column(
                                children: [

                                  Container(
                                    width: width/1.4,
                                    child: TextFormField(
                                        validator: (value) {
                                          if(value.toString().isEmpty) {
                                            return 'نام کاربری نمبتواند خالی باشد';
                                          } else {
                                            return null;
                                          }
                                        },
                                        onSaved: (value) {

                                          userName = value.toString();
                                          
                                        },
                                        decoration: InputDecoration(
                                            labelText: ('نام کاربری'),
                                            labelStyle: TextStyle(
                                              fontFamily: 'Persian',
                                              
                                            ),
                                            
                                            fillColor: Colors.white,
                                            filled: true,
                                            focusColor: Colors.black,
                                            
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide(width: 1,color: Colors.white),
                                                borderRadius: BorderRadius.circular(15),
                                            ),
                                            
                                        ),

                                        

                                    ),
                                    
                                  ),
                                SizedBox(height: 10,),

                                Container(
                                  width: width/1.4,
                                  child: TextFormField(
                                    obscureText: true,
                                    validator: (value) {
                                          if(value.toString().length < 6) {
                                            return 'پسورد ایمن نیست';
                                          } else {
                                            return null;
                                          }
                                        },
                                        onSaved: (value) {

                                          pass = value.toString();
                                          
                                        },
                                    decoration: InputDecoration(
                                       labelText: ('رمز عبور'),
                                            labelStyle: TextStyle(
                                              fontFamily: 'Persian',
                                              
                                            ),

                                            fillColor: Colors.white,
                                            filled: true,
                                            focusColor: Colors.black,
                                            
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide(width: 1,color: Colors.white),
                                                borderRadius: BorderRadius.circular(15),
                                            ),
                                            
                                     ),
                                   ),
                                 ),

                                 SizedBox(height: 15,),

                                 Container(
                                   child: GestureDetector(
                                     onTap: () async{
                                       
                                      
                                       setState(() {
                                         
                                        _saveForm();
                                      });

                                      SharedPreferences prefs = await SharedPreferences.getInstance();
                                      await prefs.setString("username", userName.toString());
       //print(x);
                                     Navigator.of(context).push(
                                        new MaterialPageRoute(

                                          builder:(context) => new Directionality(textDirection: TextDirection.rtl, child: DashboardMobile(userName: userName,))
                                        
                                          )
                                      );


                                       
                                      
                                      
                                      
                                       
                                     },
                                     child: Container(
                                       width: width/4,
                                       height: 45,
                                       child: Center(
                                         child: Text(
                                           'ثبت نام',
                                           style: TextStyle(
                                             fontFamily: 'Persian',
                                             color: Colors.white,
                                           ),
                                         ),

                                        ),
                                       
                                      ),
                                   ),
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(15),
                                     border: Border.all(color: Colors.black, width: 1),
                                     color: Color(0xff239900),
                                   ),
                                 ),
                                 
                                 SizedBox(height: 10,),

                                 Container(
                                   child: GestureDetector(
                                     child: Container(
                                       child: Center(
                                         child: Text(
                                           'ایجاد حساب کاربری',
                                           style: TextStyle(
                                             fontFamily: 'Persian',
                                             color: Colors.red,
                                           ),
                                         ),
                                       ),
                                     ),
                                   ),
                                 )

                                ],
                              ),
                          
                        ),
                      )
                   ],
                  ),
              ),
            ),
          ),
          
    );
  }
 }