import 'package:notes_server/src/generated/note.dart';
import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class NotesEndpoint extends Endpoint {
  Future<void> createNote(Session session, Note note) async {
    await Note.insert(session, note);
  }

  Future<void> deleteNote(Session session, Note note) async {
    await Note.deleteRow(session, note);
  }

  Future<List<Note>> getAllNotes(Session session) async {
    return await Note.find(session, orderBy: Note.t.id);
  }
}
