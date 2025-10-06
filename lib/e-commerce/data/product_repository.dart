
//هنا مسؤول انى اعمل فيتش للداتا

import 'dart:convert';

import 'package:http/http.dart';
import 'package:task1/e-commerce/data/product_model.dart';


class ProductRepository {
static Future<List<ProductModel>>fetchDataFromServer()async{
    var response=await get(Uri.parse('https://fakestoreapi.com/products'));
    print(response.body);
    var data = jsonDecode(response.body);
    List<ProductModel>products=[];
    print(data.length);
    for(Map map in data){
      ProductModel model=ProductModel.fromJson(map);
         
   products.add(model);

     
    }
    return products;// ✅ لازم ترجعي الليستة هنا
  }



}
