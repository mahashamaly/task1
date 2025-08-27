import 'package:flutter/material.dart';
import 'package:task1/Secreens/routs.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}
  

class _MainAppState extends State<MainApp> {

List <Widget> secreen=[
  Text('Home'),
  Text('shop'),
  Text('setting'),

];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child:Column(
          children: [
            ListTile(title:Text("Login") ,
            onTap: ()=>Navigator.pushReplacementNamed(context, Routes.login),
             
            ),
            ListTile(title:Text("Signup") ,
            onTap: ()=>Navigator.pushReplacementNamed(context, Routes.signup)
            
            
            ),
           
          ],
        ) ,
      ),
    
    appBar: AppBar(
    backgroundColor: Colors.purpleAccent,
    title: Text("APP"),
    ),
    
    body:Center(child:secreen[index] ) ,
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
         BottomNavigationBarItem(icon: Icon(Icons.shop),label:'shop',activeIcon:Icon(Icons.shop)  ),
         BottomNavigationBarItem(icon: Icon(Icons.settings_outlined),label:'setting' ,activeIcon:Icon(Icons.settings) ),
       
        
      ]),
    
    
    );

  }
}