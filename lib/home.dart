import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 16,

        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: Image.asset('assets/img/logo.png'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined),
            iconSize: 30,
          ),

          SizedBox(width: 10),

          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
            iconSize: 30,
          ),

          SizedBox(width: 10),
        ],
      ),

      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search here",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),

                  SizedBox(width: 12),

                  Image.asset('assets/img/Frame 6.png'),
                ],
              ),

              SizedBox(height: 16),

              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xffCBDAEE), Color(0xff9CB9DD00)],
                    begin: Alignment.topLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                        
                          children: [
                            Text(
                              "Todays Deal",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "50% OFF",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff000000),
                              ),
                            ),
                            Text(
                              "Et provident eos est dolore. Eum libero\n eligendi molestias aut et quibusdam\naspernatur",
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff5C6F81),
                              ),
                            ),

                          ElevatedButton(onPressed: (){}, 
                          style: ButtonStyle(
                            
                            backgroundColor: MaterialStateProperty.all(Color(0xff000000)),
                            foregroundColor: MaterialStateProperty.all(Color(0xffFFFFFF)),
                             
                            



                          ),
                          child: Row(
                            children: [

                            Text("BUY IT NOW",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700),),
                          Icon(Icons.arrow_right_alt,
                          size: 20,
                          
                          ),
                         
                           



                            ],
                          )
                          
                          
                            
                          
                                                      
                          
                          )





                          ],
                        ),
                      ),
                    ),
                    Image.asset('assets/img/image 4.png', fit: BoxFit.cover),
                  ],
                ),
              ),
              ////هنا جزئية الرو للصور
              SizedBox(height: 12),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Rated Freelances",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "View All ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 12),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset('assets/img/2.png'),
                      Text(
                        "Wade Warren",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                               color: Color(0XFF1D1F24B2),
                        ),
                      ),
                      Text(
                        "Beautician",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1D1F24),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, size: 14, color: Colors.purple),
                          SizedBox(width: 3),
                          Text(
                            "4.9",
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/img/3.png'),

                      Text(
                        "Wade Warren",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF1D1F24B2),
                        ),
                      ),
                      Text(
                        "Beautician",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1D1F24),
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, size: 14, color: Colors.purple),
                          SizedBox(width: 3),
                          Text(
                            "4.9",
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/img/4.png'),
                      Text(
                        "Wade Warren",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF1D1F24B2),
                        ),
                      ),
                      Text(
                        "Beautician",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1D1F24),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, size: 14, color: Colors.purple),
                          SizedBox(width: 3),
                          Text(
                            "4.9",
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/img/5.png'),
                      Text(
                        "Wade Warren",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF1D1F24B2),
                        ),
                      ),
                      Text(
                        "Beautician",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1D1F24),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, size: 14, color: Colors.purple),
                          SizedBox(width: 3),
                          Text(
                            "4.9",
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                ],
              ),
              SizedBox(
              height:10 ,
              ),

               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Services",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "View All ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),






            ],
          ),
        ),









        
      ),
    );
  }
}
