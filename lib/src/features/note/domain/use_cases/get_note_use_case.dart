import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/_errors.dart';
import '../../../../core/use_cases/_use_cases.dart';
import '../_domain.dart';

@lazySingleton
class GetNoteUseCase implements FutureEitherUseCase<String, NoteEntity> {
  final NoteRepository _repository;

  @factoryMethod
  const GetNoteUseCase(this._repository);

  @override
  Future<Either<Failure, NoteEntity>> call(String input) {
    return _repository.getNote(id: input);
  }
}
