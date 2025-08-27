import 'package:flutter/material.dart';

import 'package:task1/widgets/rating.dart';

class Description extends StatelessWidget {
  const Description({super.key,required this.rate,required this.name,required this.job,required this.description,required this.img});
  final double rate;
  final String img;
  final String name;
  final String job;
  final String description;

  @override
  Widget build(BuildContext context) {
        return  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(img),
                            radius: 25,
                          ),

                          SizedBox(width: 5),
                          Text(
                            name,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          
                        ],
                      ),

                      Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          


                          Text(
                            job,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff827BEB),
                            ),
                          ),
                          Text(
                           description,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF6B6B6B),
                            ),
                          ),
                        ],
                      ),

                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Rating( rate: rate,),
                            SizedBox(width: 20),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Book Now"),

                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Color(0xff827BEB),
                                ),
                                foregroundColor: MaterialStateProperty.all(
                                  Color(0xffFFFFFF),
                                  
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
  }
}