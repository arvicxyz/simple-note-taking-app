import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/_errors.dart';
import '../../../../core/use_cases/_use_cases.dart';
import '../_domain.dart';

@lazySingleton
class DeleteNoteUseCase implements FutureEitherUseCase<String, bool> {
  final NoteRepository _repository;

  @factoryMethod
  const DeleteNoteUseCase(this._repository);

  @override
  Future<Either<Failure, bool>> call(String input) {
    return _repository.deleteNote(id: input);
  }
}
