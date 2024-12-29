import 'package:flutter_test/flutter_test.dart';
import 'package:template/core/domain/failures/errors.dart';
import 'package:template/core/domain/failures/value_failure.dart';

void main() {
  // Define a group of tests for the UnexpectedValueError class
  group('UnexpectedValueError', () {
    // Define a test case for the constructor and valueFailure property
    test('should have a valueFailure property', () {
      // Create a sample ValueFailure object
      const failure = ValueFailure.empty(failedValue: 'invalid');

      // Create an UnexpectedValueError object with the sample failure
      final error = UnexpectedValueError(failure);

      // Assert that the error has the same failure as its valueFailure property
      expect(error.valueFailure, failure);
    });

    // Define a test case for the toString method
    test('toString should return a descriptive message', () {
      // Create a sample ValueFailure object
      const failure = ValueFailure.empty(failedValue: 'invalid');

      // Create an UnexpectedValueError object with the sample failure
      final error = UnexpectedValueError(failure);

      // Define the expected message
      const message =
          '"Encountered a ValueFailure at an unrecoverable point. Terminating. '
          'Failure was: ValueFailure<String>.empty(failedValue: invalid)"';

      // Assert that the error's toString method returns the expected message
      expect(error.toString(), equals(message));
    });
  });
}
