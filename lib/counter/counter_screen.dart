import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:task1/Secreens/home.dart';
import 'package:task1/Secreens/routs.dart';
import 'package:task1/counter/cupit/counter_cupit.dart';
import 'package:task1/counter/cupit/counter_steat.dart';

class CounterScreen extends StatelessWidget {
   CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCupit>(
      create: (context) => CounterCupit(),
      child: Scaffold(
      body:  Center(
        child: BlocConsumer<CounterCupit,CounterSteat>(
         
          listener: (context, state) {
        if(context.read<CounterCupit>().Counter==10){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("counter reached 10")));
        }
        if(context.read<CounterCupit>().Counter<=0 && state is CounterDecrementState){
      //  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      //   content: Text("counter cannot be negative"),
      //   duration: Duration(milliseconds: 300),
        
        
        
      //   ),);
      
      Navigator.pushNamed(context, Routes.allproducts);
        
         }
        
          },
       builder: (context, state) {
      
          return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
               TextButton(onPressed: (){
                   Provider.of<CounterCupit>(context,listen:false).increment();
                  }, 
                  child: Icon(Icons.add)),
                  Text('${context.read< CounterCupit>().Counter}',style: Theme.of(context).textTheme.headlineMedium),
                 TextButton(onPressed: (){
                 context.read<CounterCupit>().decrement();
                 },
                  child: Icon(Icons.remove))
                ],
          
          );
       }
        ),
      ),
      
      
      
      ),
    );
  }
}