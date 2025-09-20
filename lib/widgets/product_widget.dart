import 'package:flutter/material.dart';
import 'package:task1/model/product.dart';
import 'package:task1/widgets/product_detailes.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key, required this.model});
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
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
      subtitle: Row(
        children: [
          Text(model.rating.toString()),
          Icon(Icons.star, color: Colors.amberAccent),
          Text(model.ratingCount.toString()),
        ],
      ),
      trailing: Text(model.price.toString()),
    );
  }
}
