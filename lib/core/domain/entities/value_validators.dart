import 'package:dartz/dartz.dart';
import 'package:template/core/domain/failures/value_failure.codegen.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiLine(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<T>, T> validateNumberRange<T extends num>({
  required T minimum,
  required T maximum,
  required T number,
}) {
  if (number > maximum || number < minimum) {
    return left(
      ValueFailure.notInRange(
        failedValue: number,
        minimum: minimum,
        maximum: maximum,
      ),
    );
  } else {
    return right(number);
  }
}

Either<ValueFailure<String>, String> validateUniqueId(String input) {
  final regex = RegExp(
    '^[0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}',
  );
  if (regex.hasMatch(input)) {
    return right(input);
  }
  return left(ValueFailure.invalidUniqueId(failedValue: input));
}
