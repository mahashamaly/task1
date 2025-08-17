import 'package:flutter/material.dart';
import 'package:task1/Secreens/widgets/rating.dart';

class FrelancarInfo extends StatelessWidget {
  const FrelancarInfo({super.key,required this.name,required this.img,required this.titel,required this.rate});
  final String name;
  final String  img;
  final String titel;
  final double rate;
 

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
                      children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(img),
                        radius: 30,
                      ),
                      SizedBox(
                  height:5 ,
                      ),
                        Text(
                          name,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                                 color: Color(0xff1D1F24),
                          ),
                        ),
                        Text(
                         titel,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff1D1F24),
                          ),
                        ),
                        Rating(rate: rate),

            

                      ],



                    ),


                    
    );
  }
}