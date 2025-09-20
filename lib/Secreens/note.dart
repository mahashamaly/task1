class NoteModel{
 final String title;
 final DateTime date;
  final String  content;
   NoteModel({required this.title,required this.date,required this.content});



Map<String,dynamic>toJson(){
  return {
      'title': title,
      'date': date.toIso8601String(), // تخزين التاريخ كنص ISO
      'content': content,
    };
}

factory NoteModel.fromJson(Map<String,dynamic>json){
  return NoteModel(
    
    title:json ['title'], 
    date:DateTime.parse(json ['date']as String), 
    content: json['content']
  );
}




}