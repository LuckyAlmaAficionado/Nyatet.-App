import 'package:dartz/dartz.dart';
import 'package:frontend_nyatet_app_flutter/data/model/notes_response.model.dart';
import 'package:http/http.dart' as http;

class NotesDatasource {
  Future<Either<String, List<Note>>> getAllNotes({
    required String token,
  }) async {
    try {
      var headers = {'Authorization': 'Bearer $token'};
      var request = http.Request(
        'GET',
        Uri.parse('https://nyatet.orzverse.com/api/note?page=1'),
      );

      request.headers.addAll(headers);
      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        final str = await response.stream.bytesToString();
        final notes = NotesResponseModel.fromJson(str);
        return Right(notes.notes!);
      } else {
        return Left(response.reasonPhrase!);
      }
    } catch (e) {
      return Left(e.toString());
    }
  }
}
