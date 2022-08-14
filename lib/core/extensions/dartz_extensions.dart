import 'package:dartz/dartz.dart';

// get Left and Right value
extension EitherX<L, R> on Either<L, R> {
  R? getRight() => fold<R?>((_) => null, (r) => r);
  L? getLeft() => fold<L?>((l) => l, (_) => null);

  R? unwrapRight() {
    return toOption().toNullable();
  }
}
