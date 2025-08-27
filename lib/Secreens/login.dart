import 'package:flutter/material.dart';
import 'package:task1/Secreens/home.dart';
import 'package:task1/Secreens/routs.dart';
import 'package:task1/Secreens/signUp.dart';

import 'package:task1/widgets/custam_text_faild.dart';

class Login extends StatelessWidget {
  Login({super.key});

  TextEditingController namecont = TextEditingController();
  TextEditingController emailcont = TextEditingController();
  TextEditingController passwordcont = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

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



                 CustamTextFaild(
                hint: 'name',
                cont: namecont,
                validate: (name) {
                  if (name!.length>8) {
                    return null;
                  } else {
                    return 'Enter a vaild name';
                  }
                },
              ),
              
              CustamTextFaild(
                hint: 'Email',
                cont: emailcont,
                validate: (email) {
                  if (email!.contains('@') && email.contains('.')) {
                    return null;
                  } else {
                    return 'Enter a valid email';
                  }
                },
              ),
              CustamTextFaild(
                hint: 'password',
                ispassword: true,
                cont: passwordcont,
                validate: (password) {
                  if (password!.length > 8) {
                    return null;
                  } else {
                    return 'weak password';
                  }
                },
              ),
              
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,Routes.signup );
                },
                child: Text("Alredy have an accounts"),
              ),
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
    if (_key.currentState?.validate() ?? false) {
      Navigator.pushReplacementNamed(
        context, Routes.home ,
        arguments:{'name':  namecont.text}
        
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
