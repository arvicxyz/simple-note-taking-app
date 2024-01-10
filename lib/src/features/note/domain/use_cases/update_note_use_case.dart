import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/_errors.dart';
import '../../../../core/use_cases/_use_cases.dart';
import '../_domain.dart';

class UpdateNoteUseCaseInput {
  final int id;
  final NoteEntity entity;

  const UpdateNoteUseCaseInput({
    required this.id,
    required this.entity,
  });
}

@lazySingleton
class UpdateNoteUseCase implements FutureEitherUseCase<UpdateNoteUseCaseInput, bool> {
  final NoteRepository _repository;

  @factoryMethod
  const UpdateNoteUseCase(this._repository);

  @override
  Future<Either<Failure, bool>> call(UpdateNoteUseCaseInput input) {
    return _repository.updateNote(
      id: input.id,
      entity: input.entity,
    );
  }
}
