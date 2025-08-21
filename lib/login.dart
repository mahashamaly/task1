import 'package:flutter/material.dart';
import 'package:task1/Secreens/home.dart';
import 'package:task1/Secreens/widgets/custam_text_faild.dart';

class Login extends StatelessWidget {
   Login({super.key,});
 
TextEditingController namecont = TextEditingController();
TextEditingController emailcont = TextEditingController();
TextEditingController passwordcont = TextEditingController();
 final GlobalKey< FormState> _key = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 186, 161, 190),
        title: Text(
          "login",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Form(
          key: _key,
          child: Column(
            children: [
              Image.asset(
                'assets/img/Disable Login Page-Icon.png',
                height: 200,
              ),
              CustamTextFaild(hint: 'name',cont:namecont),
              CustamTextFaild(hint: 'Email',cont:emailcont),
              CustamTextFaild(hint: 'password', ispassword: true, cont:passwordcont ),
              ElevatedButton(
                onPressed: () {
                  login(context);
                 
                },
                child: Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.purpleAccent,
                  ),
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  login(BuildContext context) {
   var name= namecont.text;
    var email= emailcont.text;
    var password =passwordcont.text;
    
    
    if(name.isEmpty||email.isEmpty||password.isEmpty){
     ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content:Text('Enter valid credentials '))
      
      );
    }else{
      if(name.length>=8 &&  email.contains("@")&&email.contains(".")&&password.length>6){

     
Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) {
        return Home();
      },
    ),
  );
  //تنظيف الحقول بعد النجاح
   namecont.clear();
    emailcont.clear();
    passwordcont.clear();

      }else{
        ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content:Text('Invalid credentials. Please check your input'))
        );
      }
  
    }
   

}
}

