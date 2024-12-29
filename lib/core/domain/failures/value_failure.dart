sealed class ValueFailure<T> {
  const ValueFailure();
  const factory ValueFailure.notInRange({
    required T failedValue,
    required T minimum,
    required T maximum,
  }) = ValueFailureNotInRange<T>;

  const factory ValueFailure.invalidUniqueId({
    required T failedValue,
  }) = ValueFailureInvalidUniqueId<T>;
  const factory ValueFailure.empty({required T failedValue}) =
      ValueFailureEmpty<T>;
  const factory ValueFailure.multiLine({required T failedValue}) =
      ValueFailureMultiLine<T>;
}

class ValueFailureEmpty<T> extends ValueFailure<T> {
  const ValueFailureEmpty({required this.failedValue});
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }
}

class ValueFailureMultiLine<T> extends ValueFailure<T> {
  const ValueFailureMultiLine({required this.failedValue});
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.multiLine(failedValue: $failedValue)';
  }
}

class ValueFailureNotInRange<T> extends ValueFailure<T> {
  const ValueFailureNotInRange({
    required this.failedValue,
    required this.minimum,
    required this.maximum,
  });
  final T failedValue;
  final T minimum;
  final T maximum;

  @override
  String toString() {
    return 'ValueFailure<$T>.notInRange'
        '(failedValue: $failedValue, minimum: $minimum, maximum: $maximum)';
  }
}

class ValueFailureInvalidUniqueId<T> extends ValueFailure<T> {
  const ValueFailureInvalidUniqueId({required this.failedValue});
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidUniqueId(failedValue: $failedValue)';
  }
}
