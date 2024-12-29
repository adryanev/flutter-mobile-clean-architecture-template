import 'package:flutter_test/flutter_test.dart';
import 'package:template/core/domain/failures/value_failure.dart';

void main() {
  // Define a group of tests for the ValueFailure class
  group('ValueFailure', () {
    // Define a test case for the empty constructor and failedValue property
    test('empty should have a failedValue property', () {
      // Create a sample empty object
      const failure = ValueFailure.empty(failedValue: '');

      // Assert that the failure is an empty with the given failedValue
      expect(failure, equals(const ValueFailure.empty(failedValue: '')));
      expect((failure as ValueFailureEmpty).failedValue, '');
    });

    // Define a test case for the multiLine constructor and failedValue property
    test('multiLine should have a failedValue property', () {
      // Create a sample multiLine object
      const failure = ValueFailure.multiLine(failedValue: 'foo\nbar');

      // Assert that the failure is a multiLine with the given failedValue
      expect(
        failure,
        equals(
          const ValueFailure.multiLine(failedValue: 'foo\nbar'),
        ),
      );
      expect((failure as ValueFailureMultiLine).failedValue, 'foo\nbar');
    });

    // Define a test case for the notInRange constructor and failedValue,
    //minimum, and maximum properties
    test('notInRange should have failedValue, minimum, and maximum properties',
        () {
      // Create a sample notInRange object
      const failure = ValueFailure.notInRange(
        failedValue: 0,
        minimum: 1,
        maximum: 10,
      );

      // Assert that the failure is a notInRange with the given properties
      expect(
        failure,
        equals(
          const ValueFailure.notInRange(
            failedValue: 0,
            minimum: 1,
            maximum: 10,
          ),
        ),
      );
      expect((failure as ValueFailureNotInRange).failedValue, 0);
      expect((failure as ValueFailureNotInRange).minimum, 1);
      expect((failure as ValueFailureNotInRange).maximum, 10);
    });

    // Define a test case for the invalidUniqueId constructor
    //and failedValue property
    test('invalidUniqueId should have a failedValue property', () {
      // Create a sample invalidUniqueId object
      const failure = ValueFailure.invalidUniqueId(failedValue: '123');

      // Assert that the failure is an invalidUniqueId
      //with the given failedValue
      expect(
        failure,
        equals(
          const ValueFailure.invalidUniqueId(
            failedValue: '123',
          ),
        ),
      );
      expect((failure as ValueFailureInvalidUniqueId).failedValue, '123');
    });
  });
}
