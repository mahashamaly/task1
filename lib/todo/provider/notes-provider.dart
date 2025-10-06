import 'package:flutter/material.dart';
import 'package:task1/todo/data/note-model.dart';
import 'package:task1/todo/data/notes-sqlite-db.dart';

class Notesprovider extends ChangeNotifier {
  //data
  //هنا عندنا قائمة الملاحظات داخل Provider.
  List<NoteModel> notes = [];
  //operation
  //اضافة
  void addNote(NoteModel note) async {
    //// 1️⃣ أول شي، نحفظ النوت في قاعدة البيانات SQLite
    var id = await NotesSqliteDb.insertNotToDb(note);
    // 2️⃣ بعد ما ينحفظ، قاعدة البيانات تعطيك الـ id الفعلي للنوت
    //    لذلك نعمل نسخة جديدة من النوت مع الـ id الجديد

    note = NoteModel(
      title: note.title,
      date: note.date,
      content: note.content,
      id: id, // ✅ نضيف الـ id الحقيقي
    );
    // 3️⃣ نضيف النوت للقائمة المحلية داخل الـ Provider

    notes.add(note);
    // 4️⃣ أهم خطوة! نخبر كل الشاشة المستمعة أن هناك تغيير في البيانات
    //    وبهذا الـ notifyListeners ستعيد الـ Consumer أو أي Widget مستمع بناء نفسه تلقائيًا
    notifyListeners(); // ⬅️ هذا يخبر الواجهة أن هناك تحديث
  }

  //تحديث ملاحظة
  void updateNote(NoteModel updateNote) {
    NotesSqliteDb.updateNotFromDb(updateNote); // تحديث الملاحظة في DB

    int index = notes.indexWhere(
      (note) => note.id == updateNote.id,
    ); // نبحث عن الملاحظة في القائمة
    if (index != -1) {
      notes[index] = updateNote; // نحدث الملاحظة في القائمة
    }
    notifyListeners();
  }

  //حذف ملاحظة
  void deleteNote(NoteModel noteModel) {
    NotesSqliteDb.deleteNoteFromDb(noteModel); // حذف الملاحظة من DB
    notes.removeWhere(
      (note) => note.id == noteModel.id,
    ); //// حذف الملاحظة من القائمة
    notifyListeners();
  }

  //قراءة جميع الملاحظات من DB
  void readAllNotes() async {
    var fetchedNotes =
        await NotesSqliteDb.getNotesFromDb(); // جلب كل الملاحظات من DB
    notes = fetchedNotes; // // تحديث القائمة
    notifyListeners();
  }
}
