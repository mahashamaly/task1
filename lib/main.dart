import 'package:flutter/material.dart';
import 'package:task1/Secreens/freelancer_detailes.dart';
import 'package:task1/Secreens/home.dart';
import 'package:task1/Secreens/login.dart';
import 'package:task1/Secreens/main_app.dart';
import 'package:task1/Secreens/routs.dart';
import 'package:task1/Secreens/signup.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key,});
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
      Routes.login:(context)=>Login(),
      Routes.signup:(context)=>Signup(),
      Routes.home:(context)=>Home(),
      Routes.main:(context)=>MainApp(),
      Routes.freelancerDetailes:(context)=>FreelancerDetailes()

      } ,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

        
      home:Home()
    );
  }
}



