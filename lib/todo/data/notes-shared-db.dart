import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:task1/todo/data/note-model.dart';

class NotesSharedDb {
  List<NoteModel> notes = [];
  //هادا الكى
  static final String notesKey='notes';
  static Future <void> init()async{
    final pref=await SharedPreferences.getInstance();
    print("sharedpref initialized");

  }
 static updateListFromSharedDb(List<NoteModel> notes)async{
      final pref=await SharedPreferences.getInstance();
    final List<Map<String,dynamic>>listMap=notes.map((e)=>e.toJson()).toList();
    //بنشفرها
    final String jsonString= jsonEncode(listMap);
    //بنخزنها تحت المفتاح
     await pref.setString(notesKey,jsonString );
 
   }
 // هاى بناديها اول مايشتغل التطبيق
     static  fetchListFromSharedDb()async{
      final pref=await SharedPreferences.getInstance();
   final raw=  pref.getString(notesKey);
     if (raw == null) return; // أول مرة: ما في بيانات
 final List Decoded=jsonDecode(raw);

 return  Decoded.map((e)=>NoteModel.fromJson(e as Map<String,dynamic>)).toList();
 
  

  }

 
}
