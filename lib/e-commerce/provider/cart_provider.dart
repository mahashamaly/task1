import 'package:flutter/material.dart';
import 'package:task1/e-commerce/data/product_model.dart';
import 'package:task1/e-commerce/data/product_repository.dart';
import 'package:task1/todo/data/note-model.dart';

class CartProvider extends ChangeNotifier{
//data
List<ProductModel>cart=[];
List<ProductModel>products=[];
//operation
void addToCart(ProductModel product){
  cart.add(product);
  notifyListeners();

}
void  removeFromCart(ProductModel product){
  cart.remove(product);
  notifyListeners();

}

feachData()async{
var feachProduct=  await ProductRepository.fetchDataFromServer();
//هنا بعد ما جبنا الداتا  راح احطها بليس البرودكت
products=feachProduct;
notifyListeners();
}

void clearCart(){
  cart.clear();
  notifyListeners();
}
//عملتها علشان لمن ارجع لصفحة البرودكت ما ارجع الالاقى يلى شلته

bool isIncart(ProductModel product){
  //هذا اللوب راح يمشى على كل عنصر بالكارت
  for(var element in cart){
        if(element.id == product.id){// أو أي خاصية فريدة للمنتج
           return true;
       
        }

  }
  return false;
}
}