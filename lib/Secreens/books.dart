import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:task1/Secreens/routs.dart';
import 'package:task1/data/BookModel.dart';


import 'package:task1/widgets/book_widget.dart';


class Books extends StatefulWidget {
  const Books({super.key});

  @override
  State<Books> createState() => _MainAppState();
}
  

class _MainAppState extends State<Books> {


  List <BookModel>Books=[];
  

  @override
  void initState() {
  feachBook();
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
    
    appBar: AppBar(
    backgroundColor: Colors.purpleAccent,
    title: Text("All products"),
    
    ),
    
    body:ListView.builder(
      itemCount: Books.length,
      itemBuilder:(context,index){
        return BookWidget(model:Books [index]
    
    
    
    );
      
      }
      ),

    
    );
  }


  feachBook()async{
    var response=await get(Uri.parse('https://potterapi-fedeperin.vercel.app/en/books'));
    print(response.body);
    var data = jsonDecode(response.body);
    print(data.length);
    for(var map in data){
      BookModel model=BookModel.fromJson(map);
      if (!mounted) return;
      setState(() {
         
   Books.add(model);
});
     
    }
  }
}

  