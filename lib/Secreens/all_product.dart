import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:task1/Secreens/routs.dart';
import 'package:task1/data/product.dart';
import 'package:task1/widgets/product_widget.dart';

class AllProduct extends StatefulWidget {
  const AllProduct({super.key});

  @override
  State<AllProduct> createState() => _MainAppState();
}
  

class _MainAppState extends State<AllProduct> {

List <Widget> secreen=[
  Text('Home'),
  Text('shop'),
  Text('setting'),

];
  int index=0;
  List <ProductModel>products=[];

  @override
  void initState() {
    feachData();
  }
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
    
    body:Center(child:ListView.builder(
      itemCount: products.length,
      itemBuilder:(context,index){
        return ProductWidget(model: products[index]



);
      
      }
      )

    ),

    
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
  feachData()async{
    var response=await get(Uri.parse('https://fakestoreapi.com/products'));
    print(response.body);
    var data = jsonDecode(response.body);
    print(data.length);
    for(Map map in data){
      ProductModel model=ProductModel.fromJson(map);
      setState(() {
   products.add(model);
});
     
    }


  }
}