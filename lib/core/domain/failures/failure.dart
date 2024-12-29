sealed class Failure {
  const Failure();
  const factory Failure.localFailure({required String message}) = LocalFailure;
  const factory Failure.serverFailure({required String message}) =
      ServerFailure;
}

class LocalFailure extends Failure {
  const LocalFailure({required this.message});
  final String message;
}

class ServerFailure extends Failure {
  const ServerFailure({required this.message});
  final String message;
}
