import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:task1/Secreens/routs.dart';
import 'package:task1/model/product.dart';
import 'package:task1/widgets/product_widget.dart';

class AllProduct extends StatefulWidget {
  const AllProduct({super.key});

  @override
  State<AllProduct> createState() => _MainAppState();
}
  

class _MainAppState extends State<AllProduct> {


  List <ProductModel>products=[];
  

  @override
  void initState() {
    feachData();
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
    
    appBar: AppBar(
    backgroundColor: Colors.purpleAccent,
    title: Text("All products"),
    
    ),
    
    body:Center(child:ListView.builder(
      itemCount: products.length,
      itemBuilder:(context,index){
        return ProductWidget(model: products[index]



);
      
      }
      )

    ),

    
    );
  }


  feachData()async{
    var response=await get(Uri.parse('https://fakestoreapi.com/products'));
    print(response.body);
    var data = jsonDecode(response.body);
    print(data.length);
    for(Map map in data){
      ProductModel model=ProductModel.fromJson(map);
      if (!mounted) return;
      setState(() {
         
   products.add(model);
});
     
    }
  }
}
