import 'package:flutter/material.dart';
import 'package:task1/todo/data/note-model.dart';
import 'package:task1/todo/data/notes-sqlite-db.dart';
import 'package:task1/widgets/custam_text_faild.dart';



class NoteIteam extends StatelessWidget {
   NoteIteam({super.key,this.onDismissed,required this.note}){
     titleController.text=note.title;
     countentController.text=note.content;
   }
   
   
 
final void  Function( DismissDirection) ?onDismissed;
final NoteModel note;
    TextEditingController titleController  =TextEditingController();
  

     
      TextEditingController countentController   =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Dismissible(
          background:Container(color: Colors.red,) ,
          key: UniqueKey(),
         
            child: ListTile(
            title: Text(note.title),
            subtitle: Text(note.content),
            trailing: Text(
            '${note.date.day}/${note.date.month}/${note.date.year}',
        
          ),
          onTap: () {

          showModalBottomSheet(context: context, builder: (context){
           return Container(
            padding: EdgeInsets.all(25),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
              CustamTextFaild(cont:titleController ,hint: "title",),
              CustamTextFaild(cont:countentController ,hint: "countent",),
           
              ElevatedButton(onPressed: ()async{
              //update not in db
               NoteModel updateNote=NoteModel(
                id: note.id,
                title: titleController.text, 
                date: note.date, 
                content: countentController.text
                );

            await NotesSqliteDb.updateNotFromDb(updateNote);

                 Navigator.pop(context);
              }, child: Text("update"))
              
              ],
            ),
           );
          });
        }


            
        
          )
        );
  }
}