import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task1/Secreens/note.dart';
import 'package:task1/widgets/custam_text_faild.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {

  final String notesKey='notes';
  //TextEditingController  controller=TextEditingController();
  //هيك اذا بدى اعمل كل واحد لحال
    TextEditingController titleController  =TextEditingController();
  

     
      TextEditingController countentController   =TextEditingController();

  

List<NoteModel>notes=[];
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(

        child: Icon(Icons.add),
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context){
           return Container(
            padding: EdgeInsets.all(25),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
              CustamTextFaild(cont:titleController ,hint: "title",),
              CustamTextFaild(cont:countentController ,hint: "countent",),
           
              ElevatedButton(onPressed: (){
                //creat oobject model
               NoteModel  note= NoteModel(
                title: titleController.text, 
                date:DateTime.now(),
                 content: countentController.text
                
                );

                setState(() {
                  notes.add(note);
                  titleController.clear();
                  countentController.clear();
                  updateList();
                  Navigator.pop(context);
                  
                });
              }, child: Text("Add"))
              
              ],
            ),
           );
          });
        }
        
        
        
        ),
      appBar: AppBar(
        title: Text("Notes"),
        
      ),
      body: 
      notes.isEmpty?
      Center(child: Text('Thear is nothing to show'))
     : ListView.builder(
        itemCount: notes.length,
      itemBuilder: (context,index){
        return Dismissible(
          background:Container(color: Colors.red,) ,
          key: UniqueKey(),
          onDismissed: (direction){
            notes.removeAt(index);
            updateList();
            if(notes.length==0){
              setState(() {
                
              });

            }
          },
          child: ListTile(
            title: Text(notes[index].title),
            subtitle: Text(notes[index].content),
            trailing: Text(
            '${notes[index].date.day}/${notes[index].date.month}/${notes[index].date.year}',

          )
          )
        );
      }
        ),
    );
  }
  updateList()async{
    final pref=await SharedPreferences.getInstance();
    final List<Map<String,dynamic>>listMap=notes.map((e)=>e.toJson()).toList();
    //بنشفرها
    final String jsonString= jsonEncode(listMap);
    //بنخزنها تحت المفتاح
     await pref.setString(notesKey,jsonString );

   }
 // هاى بناديها اول مايشتغل التطبيق
  fetchList()async{
    final pref=await SharedPreferences.getInstance();
   final raw=  pref.getString(notesKey);
     if (raw == null) return; // أول مرة: ما في بيانات
 final List Decoded=jsonDecode(raw);
 setState(() {
   notes=Decoded.map((e)=>NoteModel.fromJson(e as Map<String,dynamic>)).toList();
 });
  

  }
}
