import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:task1/Secreens/routs.dart';
import 'package:task1/e-commerce/provider/cart_provider.dart';

import 'package:task1/e-commerce/presentaion/widget/product_widget.dart';

class AllProduct extends StatelessWidget {
  const AllProduct({super.key});

  @override
  Widget build(BuildContext context) {

  var cartProvider=Provider.of<CartProvider>(context);

    return Scaffold(
     
    
    appBar: AppBar(
    backgroundColor: Colors.purpleAccent,
    title: Text("All products"),
    actions: [
    
     Padding(
       padding: const EdgeInsets.all(15),
       child: Badge.count(count:cartProvider.cart.length,
       child:Icon(Icons.shopping_cart)),
     )

     
       
       
      
    ],
    
    ),
    
    body:Center(child:ListView.builder(
      itemCount:cartProvider. products.length,
      itemBuilder:(context,index){
        return ProductWidget(model:cartProvider.products[index]



);
      
      }
      )

    ),

    
    );
  }
}
