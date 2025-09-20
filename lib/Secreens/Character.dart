import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:task1/Secreens/routs.dart';
import 'package:task1/model/Character.model.dart';
import 'package:task1/widgets/Characters_widget.dart';




class Character extends StatefulWidget {
  const Character ({super.key});

  @override
  State<Character> createState() => _MainAppState();
}
  

class _MainAppState extends State<Character> {


  List <CharacterModel>Characters=[];
  

  @override
  void initState() {
feachCharacter();
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
    
    appBar: AppBar(
    backgroundColor: Colors.purpleAccent,
    title: Text("All products"),
    
    ),
    
    body:ListView.builder(
      itemCount: Characters.length,
      itemBuilder:(context,index){
        return CharactersWidget (model:Characters [index]
    
    
    
    );
      
      }
      ),

    
    );
  }


  feachCharacter()async{
    var response=await get(Uri.parse('https://raw.githubusercontent.com/fedeperin/potterapi/main/public/characters.json'));
    print(response.body);
    var data = jsonDecode(response.body);
    print(data.length);
    for(var map in data){
     CharacterModel model= CharacterModel.fromJson(map);
      if (!mounted) return;
      setState(() {  
  Characters.add(model);
});
     
    }
  }
}

  