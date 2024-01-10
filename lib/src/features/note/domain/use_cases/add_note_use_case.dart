import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/_errors.dart';
import '../../../../core/use_cases/_use_cases.dart';
import '../_domain.dart';

@lazySingleton
class AddNoteUseCase implements FutureEitherUseCase<NoteEntity, bool> {
  final NoteRepository _repository;

  @factoryMethod
  const AddNoteUseCase(this._repository);

  @override
  Future<Either<Failure, bool>> call(NoteEntity input) {
    return _repository.addNote(entity: input);
  }
}
