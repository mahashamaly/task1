import 'package:flutter/material.dart';
import 'package:task1/Secreens/routs.dart';
import 'package:task1/model/Character.model.dart';


class CharacterDescription extends StatelessWidget {
  const CharacterDescription ({super.key,required this.model});

final CharacterModel  model;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
title: Text("Characters"),

    ),
     body: Padding(
          padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Container(
                            height: 250,
                            width: double.infinity,
                            child: Image.network(model.image,fit: BoxFit.contain,),
                            
                            ),
                          SizedBox(
                      height:16 ,
                          ),
                            Text(
                              model.name,
                          
                          
                          
                              style: TextStyle(
                                fontSize: 18,
                                
                                fontWeight: FontWeight.bold,
                                     color: Color(0xff1D1F24),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                             model.house,
                             textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff1D1F24),
                              ),
                            ),
                             SizedBox(
                              height: 8,
                            ),
                     
        
               
        
                          ],
        
        
        
                        ),
        
        
                        
        ),
 
    );
  }
}