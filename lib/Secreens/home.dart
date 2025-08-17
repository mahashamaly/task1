import 'package:flutter/material.dart';
import 'package:task1/Secreens/widgets/frelancar_info.dart';
import 'package:task1/Secreens/widgets/section_widgets.dart';
import 'package:task1/Secreens/widgets/rating.dart';
import 'package:task1/Secreens/widgets/services_info.dart';

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
          child: SingleChildScrollView(
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
                      
                      colors: [Color(0xffCBDAEE), Colors.white],
                      begin: Alignment.topRight,
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
                SectionWidgets(sectionTitle: 'Top Rated Freelances',),
            
                
            
                SizedBox(height: 12),
            
                 SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                     FrelancarInfo(name:"Wade Warren",titel: "Beautician",img: ('assets/img/2.png'),rate: 4.9,),
                      FrelancarInfo(name:"Wade Warren",titel: "Beautician",img: ('assets/img/4.png'),rate: 2.4),
                       FrelancarInfo(name:"Wade Warren",titel: "Beautician",img: ('assets/img/3.png'),rate: 5.9),
                        FrelancarInfo(name:"Wade Warren",titel: "Beautician",img: ('assets/img/5.png'),rate: 9.5),

                     
                 
                             
                     
                      
                   
                          
                      
                          
                      
                      
                        ],
                      ),
                 ),
            
                  
                
                SizedBox(
                height:10 ,
                ),
                    SectionWidgets(sectionTitle: 'Top Services',),
                    

                      
                SizedBox(
                height:20 ,
                ),

                    
            ServicesInfo(services_img:'assets/img/image 6.png',rate:3.4,img: 'assets/img/4.png',   name: "Miss Zachary Will",job: "Beautician",description: "Doloribus saepe aut necessit qui\n non qui.", ),
             ServicesInfo(services_img:'assets/img/Mask group.png',rate:2.4,img: 'assets/img/4.png',   name: "Miss Zachary Will",job: "Beautician",description: "Doloribus saepe aut necessit qui\n non qui.", ),
             ServicesInfo(services_img:'assets/img/image 8.png',rate:9.6,img: 'assets/img/4.png',   name: "Miss Zachary Will",job: "Beautician",description: "Doloribus saepe aut necessit qui\n non qui.", ),


           
          
          
            
            
              ],
            ),
          ),
        ),









        
      ),
    );
  }
}
