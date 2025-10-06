import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/e-commerce/presentaion/widget/product_widget.dart';
import 'package:task1/e-commerce/provider/cart_provider.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override

  Widget build(BuildContext context) {
      var cartProvider=Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
     backgroundColor: Colors.purpleAccent,
        title: Text("cart"),
        ),
        body: Center(
          child: cartProvider.cart.isEmpty?Text("No Items in cart"):
          ListView.builder(
            itemCount: cartProvider.cart.length,
            itemBuilder: (context,index){
          return ProductWidget(model: cartProvider.cart[index],isUseInCart: true,);
          }),
        ),
    );
  }
}