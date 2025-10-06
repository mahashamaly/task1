import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:task1/todo/data/note-model.dart';
import 'package:task1/todo/data/notes-shared-db.dart';
import 'package:task1/todo/data/notes-sqlite-db.dart';
import 'package:task1/todo/presentation/widgets/note_iteam.dart';
import 'package:task1/todo/provider/notes-provider.dart';

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

  

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    // فقط لاستدعاء دالة من Provider بدون عمل rebuild
     Provider.of<Notesprovider>(context, listen: false).readAllNotes();

    //هاى بناديها اول ما التطبيق بشتغل
    //fetchList();
  }

  @override
  Widget build(BuildContext context) {
    var notesProvider= Provider.of<Notesprovider>(context);
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
           
              ElevatedButton(onPressed: ()async{
                //NotModel without id
                //creat oobject model
               NoteModel  note= NoteModel(
                title: titleController.text, 
                date:DateTime.now(),
               content: countentController.text, 
                
                );
            
                
               notesProvider.addNote(note);
              
            
              
              
              
              
                    
               
                 titleController.clear();
                  countentController.clear();
                 Navigator.pop(context);
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
      body: Consumer<Notesprovider>(builder: (context,provider,child){
       return provider.notes.isEmpty?  Center(child: Text('Thear is nothing to show')):ListView.builder(
        //النوت راح اجيبها من الليست يلى جو البرفايدر
        itemCount: provider.notes.length,
      itemBuilder: (context,index){
        return NoteIteam(note:provider.notes[index] ,
        onDismissed:  (direction)async{
          provider.deleteNote(provider.notes[index]);

        }, 

        );
      }
        );
      }
   
    )
    );
  }

 fetchList()async{
  Provider.of<Notesprovider>(context).readAllNotes();
 }
  




  // fetchList()async{
  // //var fetchList= await NotesSqliteDb.getNotesFromDb();


  // // var fetchList=await NotesSharedDb.fetchListFromSharedDb();
  
  //  setState(() {
  //   notes=fetchList;
  //  });

    
  // }
  
}