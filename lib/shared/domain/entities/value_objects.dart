import 'package:dartz/dartz.dart';
import 'package:template/core/domain/entities/value_object.dart';
import 'package:template/core/domain/entities/value_validators.dart';
import 'package:template/core/domain/failures/value_failure.codegen.dart';

class UniqueId extends ValueObject<int> {
  factory UniqueId(int? input) {
    assert(input != null, 'id cannot be null');
    // karena inputan langsung berupa int, tidak ada yg perlu divalidasi
    return UniqueId._(right(input!));
  }
  const UniqueId._(this.value);
  @override
  final Either<ValueFailure<int>, int> value;
}

class StringSingleLine extends ValueObject<String> {
  factory StringSingleLine(String? input) {
    assert(input != null, 'input value cannot be null');
    return StringSingleLine._(
      validateStringNotEmpty(input!).flatMap(validateSingleLine),
    );
  }

  const StringSingleLine._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
