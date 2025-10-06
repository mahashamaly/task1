
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/Secreens/counter.dart';
import 'package:task1/counter/cupit/counter_steat.dart';
//1️⃣ تعريف الكلاس
class CounterCupit extends Cubit<CounterSteat> {


//2️⃣ إضافة الحالة الأولية (initial state)
CounterCupit():super(CounterInitialState());
//data
//3️⃣ إضافة وظائف لتغيير الحالة
  int Counter=0;
void increment() {
  Counter++;
   emit(CounterIncrementState()); // زيادة العدد
}
  void decrement() {
    if(state==0)return;
   
    Counter--;
    emit(CounterDecrementState()); // نقصا
  }

}
