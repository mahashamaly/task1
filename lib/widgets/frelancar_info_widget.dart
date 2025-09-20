import 'package:flutter/material.dart';
import 'package:task1/Secreens/routs.dart';
import 'package:task1/model/FrelancarModel.dart';

import 'rating.dart';

class FrelancarInfoWidget extends StatelessWidget {
  const  FrelancarInfoWidget({super.key,required this.model});

final FrelancarModel model;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap:(){
        Navigator.pushNamed(context,Routes.freelancerDetailes ,
        arguments: model
        
        
        );
      } ,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
                  child: Column(
                        children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(model.img),
                          radius: 30,
                        ),
                        SizedBox(
                    height:5 ,
                        ),
                          Text(
                            model.name,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                                   color: Color(0xff1D1F24),
                            ),
                          ),
                          Text(
                           model.titel,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff1D1F24),
                            ),
                          ),
                          Rating(rate: model.rate),
      
              
      
                        ],
      
      
      
                      ),
      
      
                      
      ),
    );
  }
}