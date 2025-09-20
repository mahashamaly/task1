import 'package:flutter/material.dart';
import 'package:task1/model/FrelancarModel.dart';
import 'package:task1/model/servicesinfoModel.dart';

import 'package:task1/widgets/frelancar_info_widget.dart';
import 'package:task1/widgets/section_widgets.dart';
import 'package:task1/widgets/services_info.dart';





class Home extends StatelessWidget {
  Home({super.key});

  final List<FrelancarModel> Freelances = [
    FrelancarModel(
      name: "Wade Warren",
      titel: "Beautician",
      img: ('assets/img/2.png'),
      rate: 4.9,
    ),

    FrelancarModel(
      name: "Wade Warren",
      titel: "Beautician",
      img: ('assets/img/4.png'),
      rate: 2.4,
    ),

    FrelancarModel(
      name: "Wade Warren",
      titel: "Beautician",
      img: ('assets/img/3.png'),
      rate: 5.9,
    ),

    FrelancarModel(
      name: "Wade Warren",
      titel: "Beautician",
      img: ('assets/img/5.png'),
      rate: 9.5,
    ),
    FrelancarModel(
      name: "Wade Warren",
      titel: "Beautician",
      img: ('assets/img/2.png'),
      rate: 4.9,
    ),
    FrelancarModel(
      name: "Wade Warren",
      titel: "Beautician",
      img: ('assets/img/2.png'),
      rate: 4.9,
    ),
  ];
final List <ServicesinfoModel> Services =[
ServicesinfoModel(services_img: 'assets/img/image 6.png',
                  rate: 3.4,
                  img: 'assets/img/4.png',
                  name: "Miss Zachary Will",
                  job: "Beautician",
                  description: "Doloribus saepe aut necessit qui\n non qui.",),
  ServicesinfoModel( services_img: 'assets/img/Mask group.png',
                  rate: 2.4,
                  img: 'assets/img/4.png',
                  name: "Miss Zachary Will",
                  job: "Beautician",
                  description: "Doloribus saepe aut necessit qui\n non qui.",),  
 ServicesinfoModel(
        services_img: 'assets/img/image 8.png',
                  rate: 9.6,
                  img: 'assets/img/4.png',
                  name: "Miss Zachary Will",
                  job: "Beautician",
                  description: "Doloribus saepe aut necessit qui\n non qui.",
 )        




];
  @override
  Widget build(BuildContext context) {
    final arg =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;
    final String name = arg?['name'] ?? 'Guest';
    final String email= arg?['email']??'no email';
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 16,

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
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
                Text("hello $name"),
                Text("Your email: $email"),
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

                              ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    Color(0xff000000),
                                  ),
                                  foregroundColor: MaterialStateProperty.all(
                                    Color(0xffFFFFFF),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "BUY IT NOW",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Icon(Icons.arrow_right_alt, size: 20),
                                  ],
                                ),
                              ),
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
                SectionWidgets(sectionTitle: 'Top Rated Freelances'),

                SizedBox(height: 12),

                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Freelances.length,
                    itemBuilder: (context, index) {
                      return FrelancarInfoWidget(model: Freelances[index]);
                    },
                  ),
                ),

                SizedBox(height: 10),
                SectionWidgets(sectionTitle: 'Top Services'),

                SizedBox(height: 20),

                ListView.builder(
                    physics: NeverScrollableScrollPhysics(), // منع الـ scroll الداخلي
                    shrinkWrap: true,  
                  scrollDirection: Axis.vertical,
                  itemCount:Services.length ,
                  itemBuilder:(context,index){
                  return  ServicesInfo(model: Services[index]);
                  }
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
