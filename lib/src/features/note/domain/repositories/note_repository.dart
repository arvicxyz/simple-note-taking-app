import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/_errors.dart';
import '../entities/_entities.dart';

abstract class NoteRepository {
  Future<Either<Failure, List<NoteEntity>>> getAllNote();

  Future<Either<Failure, NoteEntity>> getNote({required String id});

  Future<Either<Failure, bool>> addNote({required NoteEntity entity});

  Future<Either<Failure, bool>> updateNote({required String id, required NoteEntity entity});

  Future<Either<Failure, bool>> deleteNote({required String id});
}
