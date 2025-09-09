import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:task1/Secreens/all_product.dart';
import 'package:task1/Secreens/books.dart';
import 'package:task1/Secreens/routs.dart';

class MainNavScreen extends StatefulWidget {
  const MainNavScreen ({super.key});

  @override
  State<MainNavScreen> createState() => _MainAppState();
}
  

class _MainAppState extends State<MainNavScreen> {



  List <Widget> Screens = [AllProduct(),Books(),Text('setting')];
int index=0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(   
   
    
    body:Screens[index],
    
 
     bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 20,
        unselectedFontSize: 15,
       
        currentIndex: index,
        onTap: (value){
       setState(() {
         index=value;
         
       });
        },
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',activeIcon: Icon(Icons.home) ),
         BottomNavigationBarItem(icon: Icon(Icons.book),label:'books',activeIcon:Icon(Icons.shop)  ),
         BottomNavigationBarItem(icon: Icon(Icons.settings_outlined),label:'setting' ,activeIcon:Icon(Icons.settings) ),
       
        
      ]),
    

    
    );
    
    
 

  }
}