class NoteModel{
 final String title;
 final DateTime date;
  final String  content;
  int id;
   NoteModel({required this.title,required this.date,required this.content,this.id=0 });



Map<String,dynamic>toJson(){
  return {
   
      'title': title,
      'date': date.toIso8601String(), // تخزين التاريخ كنص ISO
      'content': content,
    };
}

factory NoteModel.fromJson(Map<String,dynamic>json){
  return NoteModel(
    id:json['id'],
    title:json ['title'], 
  date: DateTime.parse(json['date']),
    content: json['content']
  );
}




}