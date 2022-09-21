import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdp_intermediate/Hotels.dart';
import 'package:pdp_intermediate/Market.dart';
import 'package:pdp_intermediate/PartyApp.dart';
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
      debugShowCheckedModeBanner: false,
       home:PartApp(),
        routes: {
          HomePage.id:(context)=>HomePage(),
          IntroPage.id:(context)=> IntroPage(),
          Market.id:(context)=> Market(),
          Hotels.id:(context)=>Hotels(),
          PartApp.id:(context)=>PartApp()
        },
      );
  }
}