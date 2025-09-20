import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}




class _CounterState extends State<Counter> {
  int _counter=0;
String counterKey='counter';
    @override
  void initState() {
    super.initState();
     readCounter();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              TextButton(onPressed: (){
                setState(() {
                  _counter++;
                  saveCounter(_counter);
                });
              }, child: Icon(Icons.add)),
              Text(_counter.toString(),style: Theme.of(context).textTheme.headlineMedium),
             TextButton(onPressed: (){
              setState(() {
                _counter--;
                saveCounter(_counter);
              });
             },
              child: Icon(Icons.remove))
              ],
            )
          ],
        ),
      ),
    );
  }

  saveCounter(int _counter)async{
    final pref= await SharedPreferences.getInstance();
    pref.setInt(counterKey, _counter);
  }
  readCounter()async{
   final pref= await SharedPreferences.getInstance();
setState(() {
    _counter =pref.getInt(counterKey)??0;
});
  }
}