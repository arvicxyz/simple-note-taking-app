import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/_errors.dart';
import '../../../../core/use_cases/_use_cases.dart';
import '../_domain.dart';

@lazySingleton
class GetAllNoteUseCase implements NoInputFutureEitherUseCase<List<NoteEntity>> {
  final NoteRepository _repository;

  @factoryMethod
  const GetAllNoteUseCase(this._repository);

  @override
  Future<Either<Failure, List<NoteEntity>>> call() {
    return _repository.getAllNote();
  }
}
