import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template/core/domain/failures/errors.dart';
import 'package:template/core/domain/failures/value_failure.codegen.dart';

// ignore: one_member_abstracts
abstract class IValidatable {
  bool isValid();
}

@immutable
abstract class ValueObject<T> implements IValidatable {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  T getOrCrash() => value.fold((l) => throw UnexpectedValueError(l), id);

  T getOrElse(T dflt) => value.getOrElse(() => dflt);

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit =>
      value.fold(left, (r) => right(unit));

  @override
  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
