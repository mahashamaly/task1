import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/e-commerce/data/product_model.dart';
import 'package:task1/e-commerce/provider/cart_provider.dart';

import 'package:task1/e-commerce/presentaion/secreen/product_detailes.dart';

class ProductWidget extends StatelessWidget {
   ProductWidget({super.key, required this.model,this.isUseInCart=false});
  final ProductModel model;
  //عملته علشان لمن انتقل لصفحة الشيك ما بدى تظهر علامة صح بدى دليت
  bool isUseInCart;

  @override

  Widget build(BuildContext context) {
    //عملت اوبجكت منه للكل
    var cartProvider=Provider.of<CartProvider>(context,listen: false);
    return ListTile(
      onTap: () {
        Navigator.push(context, 
        MaterialPageRoute(builder: (context) => ProductDetailes(model: model),)
        
        );
      },
      leading: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(model.image)),
        ),
      ),
      title: Text(model.title),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('${model.rating.toString()}\$',style: TextStyle(color:Colors.orange,fontWeight: FontWeight.bold),),
         Row(
          children: [
          Text(model.ratingCount.toString()),
          Icon(Icons.star,color: Colors.amber,),
           Text(model.price.toString()),
          ],
         )
        ],
      ),
      trailing: IconButton(onPressed: (){
        //هل المنتج موجود بالسلة
        //isIncart()	دالة تفحص هل المنتج موجود داخل القائمة
        if(cartProvider.isIncart(model)){
      // لو المنتج موجود في الكارت → احذفه
          cartProvider.removeFromCart(model);
        }else{
        // لو المنتج مش موجود → ضيفه للكارت

           cartProvider.addToCart(model);
        }
        print('${cartProvider.cart.length}'); // طباعة عدد العناصر بعد التغيير
      }, 
      
      icon:cartProvider.isIncart(model)? isUseInCart?Icon(Icons.delete): Icon(Icons.check):Icon(Icons.add_shopping_cart))
      
    );
  }
}
