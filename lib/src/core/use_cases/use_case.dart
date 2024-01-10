abstract class UseCase<INPUT, OUTPUT> {
  OUTPUT call(INPUT input);
}

abstract class NoInputUseCase<OUTPUT> {
  OUTPUT call();
}
