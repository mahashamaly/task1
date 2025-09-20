import 'package:flutter/material.dart';
import 'package:task1/model/Character.model.dart';
import 'package:task1/widgets/Character_description.dart';






class CharactersWidget extends StatelessWidget {
  const CharactersWidget({super.key, required this.model});
  final   CharacterModel  model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
            return CharacterDescription(model:model );
        } )
        
        
        
        );
      },
      child: ListTile(
       leading:   ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            model.image,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
      
      
      
        title: Text(model.name),
        
        subtitle: Column(
          children: [
               Text(model.house),
          ],
        ),
        
        
       
      ),
    );
 
  }
}
