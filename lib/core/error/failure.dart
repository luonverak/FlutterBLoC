abstract class Failure {
  final String message;
  const Failure({
    required this.message,
  });
}

class GeneralError extends Failure {
  GeneralError({required super.message});
}
