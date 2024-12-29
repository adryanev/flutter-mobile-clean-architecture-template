import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:template/core/domain/entities/value_object.dart';
import 'package:template/core/domain/failures/errors.dart';
import 'package:template/core/domain/failures/value_failure.dart';

// Define a subclass of ValueObject for testing purposes
class TestValueObject extends ValueObject<String> {
  const TestValueObject(this.value);
  @override
  final Either<ValueFailure<String>, String> value;
}

void main() {
  // Define a group of tests for the ValueObject class
  group('ValueObject', () {
    // Define a test case for the IValidatable interface
    test('should implement IValidatable interface', () {
      // Create a valid and an invalid TestValueObject
      final valid = TestValueObject(right('valid'));
      final invalid = TestValueObject(
        left(
          const ValueFailure.empty(failedValue: 'invalid'),
        ),
      );

      // Assert that they implement IValidatable interface
      expect(valid, isA<IValidatable>());
      expect(invalid, isA<IValidatable>());
    });

    // Define a test case for the getOrCrash method
    test('getOrCrash should return the value or throw an exception', () {
      // Create a valid and an invalid TestValueObject
      final valid = TestValueObject(right('valid'));
      final invalid = TestValueObject(
        left(
          const ValueFailure.empty(failedValue: 'invalid'),
        ),
      );

      // Assert that getOrCrash returns the value for the valid object
      expect(valid.getOrCrash(), 'valid');

      // Assert that getOrCrash throws an exception for the invalid object
      expect(invalid.getOrCrash, throwsA(isA<UnexpectedValueError>()));
    });

    // Define a test case for the getOrElse method
    test('getOrElse should return the value or a default value', () {
      // Create a valid and an invalid TestValueObject
      final valid = TestValueObject(right('valid'));
      final invalid = TestValueObject(
        left(
          const ValueFailure.empty(failedValue: 'invalid'),
        ),
      );

      // Assert that getOrElse returns the value for the valid object
      expect(valid.getOrElse('default'), 'valid');

      // Assert that getOrElse returns the default value for the invalid object
      expect(invalid.getOrElse('default'), 'default');
    });

    // Define a test case for the failureOrUnit property
    test('failureOrUnit should return the failure or unit', () {
      // Create a valid and an invalid TestValueObject
      final valid = TestValueObject(right('valid'));
      final invalid = TestValueObject(
        left(
          const ValueFailure.empty(failedValue: 'invalid'),
        ),
      );

      // Assert that failureOrUnit returns unit for the valid object
      expect(valid.failureOrUnit, right<ValueFailure<String>, Unit>(unit));

      // Assert that failureOrUnit returns the failure for the invalid object
      expect(
        invalid.failureOrUnit,
        left<ValueFailure<String>, Unit>(
          const ValueFailure.empty(
            failedValue: 'invalid',
          ),
        ),
      );
    });

    // Define a test case for the isValid method
    test('isValid should return true or false', () {
      // Create a valid and an invalid TestValueObject
      final valid = TestValueObject(right('valid'));
      final invalid = TestValueObject(
        left(
          const ValueFailure.empty(failedValue: 'invalid'),
        ),
      );

      // Assert that isValid returns true for the valid object
      expect(valid.isValid(), true);

      // Assert that isValid returns false for the invalid object
      expect(invalid.isValid(), false);
    });
  });
}
