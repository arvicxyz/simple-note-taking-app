import 'package:fpdart/fpdart.dart';

import '../errors/_errors.dart';

abstract class UseCase<INPUT, OUTPUT> {
  OUTPUT call(INPUT input);
}

abstract class FutureEitherUseCase<INPUT, OUTPUT>
    extends UseCase<INPUT, Future<Either<Failure, OUTPUT>>> {}

abstract class NoInputUseCase<OUTPUT> {
  OUTPUT call();
}

abstract class NoInputFutureEitherUseCase<OUTPUT>
    extends NoInputUseCase<Future<Either<Failure, OUTPUT>>> {}
