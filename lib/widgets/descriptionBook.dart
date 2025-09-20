import 'package:flutter/material.dart';
import 'package:task1/Secreens/routs.dart';
import 'package:task1/model/BookModel.dart';
import 'package:task1/model/FrelancarModel.dart';
import 'package:task1/model/product.dart';

import 'rating.dart';

class Descriptionbook extends StatelessWidget {
  const Descriptionbook ({super.key,required this.model});

final BookModel model;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
title: Text("Books"),

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
                            child: Image.network(model.cover,fit: BoxFit.contain,),
                            
                            ),
                          SizedBox(
                      height:16 ,
                          ),
                            Text(
                              model.title,
                              maxLines: 2,
                              overflow:TextOverflow.ellipsis,
                          
                          
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
                             model.description,
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
                     
        
                Text(model.releaseDate)
        
                          ],
        
        
        
                        ),
        
        
                        
        ),
 
    );
  }
}