
import 'package:sqflite/sqflite.dart';
import 'package:task1/todo/data/note-model.dart';

class NotesSqliteDb {
static late Database _database;
static String dbPath='notes.db';
static String tableName='notes';
static String ColumnId='id';
static String ColumnTitle='title';
static String ColumnDate='date';
static String ColumnContent='content';

static Future<void>init()async{
_database=await openDatabase(
  dbPath,
  version: 1,
onCreate: (db, version) {
// When creating the db, create the table
print('on create db called');
 db.execute(
      'CREATE TABLE notes ($ColumnId INTEGER PRIMARY KEY AUTOINCREMENT, $ColumnTitle TEXT, $ColumnDate  TEXT, $ColumnContent TEXT)');



},
onOpen: (db){
  print('on open db called');

}

);
}

//insert
 static Future<int> insertNotToDb(NoteModel noteModel)async{
 int id=await _database.rawInsert('INSERT INTO $tableName($ColumnTitle, $ColumnContent, $ColumnDate) VALUES("${noteModel.title}", "${noteModel.content}", "${noteModel.date}")');
return id;

}
//read

static Future<List<NoteModel>>getNotesFromDb()async{
 var result=await _database.rawQuery('SELECT * FROM $tableName');
 print(result);
 List<NoteModel> notes=[];
 for(var map in result){
  NoteModel note=NoteModel.fromJson(map);
  notes.add(note);
 }
return notes;
}
//update
static updateNotFromDb(NoteModel note)async{
  int result= await _database.rawUpdate( 'UPDATE $tableName SET $ColumnTitle = "${note.title}", $ColumnContent = "${note.content}" WHERE $ColumnId = ${note.id}',
);


}



//delete
static deleteNoteFromDb(NoteModel note)async{
int result=await _database.rawDelete('DELETE FROM $tableName WHERE $ColumnId=${note.id}');
print("note delete $result");
}


}