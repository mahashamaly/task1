import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:task1/bloc-observer.dart';
import 'package:task1/counter/counter_screen.dart';
import 'package:task1/e-commerce/presentaion/secreen/cart.dart';
import 'package:task1/Secreens/counter.dart';
import 'package:task1/Secreens/freelancer_detailes.dart';
import 'package:task1/Secreens/home.dart';
import 'package:task1/Secreens/login.dart';
import 'package:task1/e-commerce/presentaion/secreen/all_product.dart';
import 'package:task1/e-commerce/presentaion/secreen/main_nav_screen.dart';

import 'package:task1/Secreens/routs.dart';
import 'package:task1/Secreens/signup.dart';
import 'package:task1/e-commerce/provider/cart_provider.dart';
import 'package:task1/todo/data/notes-shared-db.dart';
import 'package:task1/todo/data/notes-sqlite-db.dart';
import 'package:task1/todo/presentation/screens/noat-screen.dart';
import 'package:task1/todo/provider/notes-provider.dart';





void main() async{
  WidgetsFlutterBinding.ensureInitialized();
final pref= await SharedPreferences.getInstance();
bool isLoggedIn = pref.getString(Login.userCredentialKey) != null;
  await NotesSharedDb.init();

  await  NotesSqliteDb.init();
   Bloc.observer = MyBlocObserver();


  runApp( MyApp(isLoggedIn: isLoggedIn));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key,required this.isLoggedIn});
 final bool isLoggedIn;
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
     // create: (context)=>Notesprovider(),
     //"خذ نفس النسخة اللي أنشأتها للتو، ونفذ عليها هذه الدالة مباشرة".
     create: (context) => CartProvider()..feachData(),
      child: MaterialApp(
      theme: ThemeData(
      textTheme: TextTheme()
      
      ),
      
        routes:{
        Routes.login:(context)=>Login(),
        Routes.signup:(context)=>Signup(),
        Routes.home:(context)=>Home(),
        Routes.allproducts:(context)=>AllProduct(),
        Routes.freelancerDetailes:(context)=>FreelancerDetailes(),
        Routes.MainNavScreen:(context)=>MainNavScreen(),
        Routes.cart:(context)=>Cart()
      
        } ,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
      
          
        //home: isLoggedIn? NotesScreen():Login()
        home:CounterScreen()
      
        
      ),
    );
  }
}



