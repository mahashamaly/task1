import 'package:flutter/material.dart';
import 'package:task1/data/BookModel.dart';

import 'package:task1/widgets/descriptionBook.dart';



class BookWidget extends StatelessWidget {
  const BookWidget({super.key, required this.model});
  final BookModel model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
            return Descriptionbook(model:model );
        } )
        
        
        
        );
      },
      child: ListTile(
       leading:   ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            model.cover,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
      
      
      
        title: Text((model.title)),
        
        subtitle: Column(
          children: [
            Text(model.description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            ),
          
            Text(model.releaseDate),
            Text(model.pages.toString()),
          ],
        ),
        
        
       
      ),
    );
 
  }
}
