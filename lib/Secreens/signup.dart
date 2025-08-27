import 'package:flutter/material.dart';
import 'package:task1/Secreens/home.dart';
import 'package:task1/Secreens/routs.dart';

import 'package:task1/widgets/custam_text_faild.dart';

class Signup extends StatelessWidget {
   Signup({super.key,});
 
TextEditingController namecont = TextEditingController();
TextEditingController emailcont = TextEditingController();
TextEditingController passwordcont = TextEditingController();
TextEditingController confirmpasswordcont = TextEditingController();
TextEditingController phonecont = TextEditingController();
 final GlobalKey< FormState> _key = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 186, 161, 190),
        title: Text(
          "Signup",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body:Center(
        
        child: Form(
          key: _key,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/img/Disable Login Page-Icon.png',
                  height: 200,
                ),
                CustamTextFaild(hint: 'name',cont:namecont,validate: (name){
                  if(name!.length>12){
                    return null;
                  }else{
                   return"Enter a valid name";
                  }
                },),
                CustamTextFaild(hint: 'Email',cont:emailcont,validate:(email){
                  if (!email!.contains('@') ) return "email must contains @";
                  if(!email.contains('.'))return "email must contains .";
                  return null;
                   
            
                } ,),
                CustamTextFaild(hint: 'password', ispassword: true, cont:passwordcont,validate: (password){
                 if(password!.length>8)return null;
               
                  return "weak password"; 
                      
            
                }, ),
                CustamTextFaild(hint: 'confirm password', ispassword: true, cont:confirmpasswordcont,validate: (confirmpassword){
            
                   if(confirmpassword==passwordcont.text && confirmpassword!.isNotEmpty)return null;
                
                  return "Passwords do not match"; 
                
                }, ),
                CustamTextFaild(hint: 'phone number', ispassword: true, cont:phonecont,validate: (phonenumber ){
                  if(phonenumber!.startsWith('059'))return null;
                
                    return"Enter valid phone number";
            
                }, ),
            
               TextButton(onPressed: (){
                 
                      Navigator.pushReplacementNamed(context, Routes.login);
            
                
              
            
            
            
            
               }, 
               child: Text("Alredy have an accounts")
               ),
            
            
            
                ElevatedButton(
                  onPressed: () {
                   _Signup(context);
                     if (_key.currentState?.validate() ?? false) {
                      
                     }
                   
                  },
                  child: Text(
                    "SignUp",
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
      ),
    );
  }






_Signup(BuildContext context) {
    if (_key.currentState?.validate() ?? false) {
      Navigator.pushReplacementNamed(
        context,Routes.home,
        arguments: {'name':  namecont.text}
        
      );
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(
        content: Text('Enter valid credentials '),
        duration: Duration(milliseconds: 3),
        backgroundColor: Colors.red,
        ),
        );
    }
    
  }
}






 

