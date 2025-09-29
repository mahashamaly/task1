import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:task1/todo/data/note-model.dart';
import 'package:task1/todo/data/notes-shared-db.dart';
import 'package:task1/todo/data/notes-sqlite-db.dart';
import 'package:task1/todo/presentation/widgets/note_iteam.dart';
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
   
    //هاى بناديها اول ما التطبيق بشتغل
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
           
              ElevatedButton(onPressed: ()async{
                //NotModel without id
                //creat oobject model
               NoteModel  note= NoteModel(
                title: titleController.text, 
                date:DateTime.now(),
               content: countentController.text, 
                
                );
                 var id= await NotesSqliteDb.insertNotToDb(note);
                 // يجب هنا تحديث note.id = id
                 note.id = id;
              
              fetchList();
              
              
              
                //  note.id = id; // تحديث id بالنوت الفعلية

                  //طريقة حل1 
                //هنا اضفنا ال id            
              //   note=NoteModel(
              //      title: note.title,
              //   date:note.date,
              //  content: note.content,
              //  id:id

              //   );
                    
               
                  //  notes.add(note);
                 //هيك ضفت النوت ل ui
                // setState(() {
                
               
                //     notes.add(note);
                 
                // // NotesSharedDb.updateListFromSharedDb(notes);
                
                  
                // });
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
      body: 
      notes.isEmpty?
      Center(child: Text('Thear is nothing to show'))
     : ListView.builder(
        itemCount: notes.length,
      itemBuilder: (context,index){
        return NoteIteam(note:notes[index] ,
        onDismissed:  (direction)async{
           await  NotesSqliteDb.deleteNoteFromDb(notes[index]);
           await fetchList(); // تحديث القائمة من DB

            //notes.removeAt(index);
           //NotesSharedDb.updateListFromSharedDb(notes);
            if(notes.length==0){
              setState(() {
                
              });

            }
          }, 
        );
      }
        ),
    );
  }
  fetchList()async{
  var fetchList= await NotesSqliteDb.getNotesFromDb();


  // var fetchList=await NotesSharedDb.fetchListFromSharedDb();
  
   setState(() {
    notes=fetchList;
   });

    
  }
  
}