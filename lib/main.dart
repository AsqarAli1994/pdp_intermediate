import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdp_intermediate/home_page.dart';
import 'package:pdp_intermediate/intri_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
       home:IntroPage(),
        routes: {
          HomePage.id:(context)=>HomePage(),
          IntroPage.id:(context)=> IntroPage()
        },
      );
  }
}